
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {char* address; char* org_address; int size; size_t nCopy; void* type; } ;
typedef TYPE_2__ smmu_mem_info_t ;
typedef int img_hdr_tmp ;
struct TYPE_8__ {int image_size; int nBar; TYPE_3__* img_hdr; TYPE_2__* adsl_mem_info; } ;
struct TYPE_7__ {unsigned long size; TYPE_1__* page; } ;
struct TYPE_5__ {unsigned long p_offset; } ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;
typedef TYPE_3__ ARC_IMG_HDR ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_4__* DSL_DEV_PRIVATE (int *) ;
 int ENOMEM ;
 int FREE_ALL ;
 void* FREE_RELOAD ;
 void* FREE_SHOWTIME ;
 int GFP_KERNEL ;
 int IFX_MEI_BarUpdate (int *,int) ;
 int IFX_MEI_DFEMemoryAlloc (int *,int) ;
 int IFX_MEI_DFEMemoryFree (int *,int ) ;
 int IFX_MEI_DMSG (char*) ;
 int IFX_MEI_EMSG (char*) ;
 int IFX_MEI_HaltArc (int *) ;
 int IFX_MEI_ResetARC (int *) ;
 scalar_t__ KSEG1ADDR (unsigned long) ;
 int SDRAM_SEGMENT_SIZE ;
 int XDATA_REGISTER ;
 int copy_from_user (char*,char const*,size_t) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int le32_to_cpu (unsigned long) ;

DSL_DEV_MeiError_t
DSL_BSP_FWDownload (DSL_DEV_Device_t * pDev, const char *buf,
    unsigned long size, long *loff, long *current_offset)
{
 ARC_IMG_HDR img_hdr_tmp;
 smmu_mem_info_t *adsl_mem_info = DSL_DEV_PRIVATE(pDev)->adsl_mem_info;

 size_t nRead = 0, nCopy = 0;
 char *mem_ptr;
 char *org_mem_ptr = ((void*)0);
 ssize_t retval = -ENOMEM;
 int idx = 0;

        IFX_MEI_DMSG("\n");

 if (*loff == 0) {
  if (size < sizeof (img_hdr_tmp)) {
   IFX_MEI_EMSG ("Firmware size is too small!\n");
   return retval;
  }
  copy_from_user ((char *) &img_hdr_tmp, buf, sizeof (img_hdr_tmp));

  DSL_DEV_PRIVATE(pDev)->image_size = le32_to_cpu (img_hdr_tmp.size) + 8;

  if (DSL_DEV_PRIVATE(pDev)->image_size > 1024 * 1024) {
   IFX_MEI_EMSG ("Firmware size is too large!\n");
   return retval;
  }

  IFX_MEI_ResetARC (pDev);
  IFX_MEI_HaltArc (pDev);

  IFX_MEI_DFEMemoryFree (pDev, FREE_ALL);

  retval = IFX_MEI_DFEMemoryAlloc (pDev, DSL_DEV_PRIVATE(pDev)->image_size);
  if (retval < 0) {
   IFX_MEI_EMSG ("Error: No memory space left.\n");
   goto error;
  }
  for (idx = 0; idx < retval; idx++) {

   if (idx == XDATA_REGISTER)
    continue;
   if (idx * SDRAM_SEGMENT_SIZE < le32_to_cpu (img_hdr_tmp.page[0].p_offset))
    adsl_mem_info[idx].type = FREE_RELOAD;
   else
    adsl_mem_info[idx].type = FREE_SHOWTIME;
  }
  DSL_DEV_PRIVATE(pDev)->nBar = retval;

  DSL_DEV_PRIVATE(pDev)->img_hdr =
   (ARC_IMG_HDR *) adsl_mem_info[0].address;

  org_mem_ptr = kmalloc (SDRAM_SEGMENT_SIZE, GFP_KERNEL);
  if (org_mem_ptr == ((void*)0)) {
   IFX_MEI_EMSG ("kmalloc memory fail!\n");
   retval = -ENOMEM;
   goto error;
  }

  if (((unsigned long)org_mem_ptr) & (1023)) {



   kfree(org_mem_ptr);
   org_mem_ptr = kmalloc (SDRAM_SEGMENT_SIZE + 1024, GFP_KERNEL);
   if (org_mem_ptr == ((void*)0)) {
    IFX_MEI_EMSG ("kmalloc memory fail!\n");
    retval = -ENOMEM;
    goto error;
   }
   adsl_mem_info[XDATA_REGISTER].address =
    (char *) ((unsigned long) (org_mem_ptr + 1023) & ~(1024 -1));
  } else {
   adsl_mem_info[XDATA_REGISTER].address = org_mem_ptr;
  }

  adsl_mem_info[XDATA_REGISTER].org_address = org_mem_ptr;
  adsl_mem_info[XDATA_REGISTER].size = SDRAM_SEGMENT_SIZE;

  adsl_mem_info[XDATA_REGISTER].type = FREE_RELOAD;
  IFX_MEI_DMSG("-> IFX_MEI_BarUpdate()\n");
  IFX_MEI_BarUpdate (pDev, (DSL_DEV_PRIVATE(pDev)->nBar));
 }
 else if (DSL_DEV_PRIVATE(pDev)-> image_size == 0) {
  IFX_MEI_EMSG ("Error: Firmware size=0! \n");
  goto error;
 }

 nRead = 0;
 while (nRead < size) {
  long offset = ((long) (*loff) + nRead) % SDRAM_SEGMENT_SIZE;
  idx = (((long) (*loff)) + nRead) / SDRAM_SEGMENT_SIZE;
  mem_ptr = (char *) KSEG1ADDR ((unsigned long) (adsl_mem_info[idx].address) + offset);
  if ((size - nRead + offset) > SDRAM_SEGMENT_SIZE)
   nCopy = SDRAM_SEGMENT_SIZE - offset;
  else
   nCopy = size - nRead;
  copy_from_user (mem_ptr, buf + nRead, nCopy);
  for (offset = 0; offset < (nCopy / 4); offset++) {
   ((unsigned long *) mem_ptr)[offset] = le32_to_cpu (((unsigned long *) mem_ptr)[offset]);
  }
  nRead += nCopy;
  adsl_mem_info[idx].nCopy += nCopy;
 }

 *loff += size;
 *current_offset = size;
 return DSL_DEV_MEI_ERR_SUCCESS;
error:
 IFX_MEI_DFEMemoryFree (pDev, FREE_ALL);
 return DSL_DEV_MEI_ERR_FAILURE;
}
