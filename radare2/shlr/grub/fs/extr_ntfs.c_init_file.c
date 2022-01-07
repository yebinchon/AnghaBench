
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ attr_end; } ;
struct grub_ntfs_file {int inode_read; TYPE_2__ attr; int size; int * buf; int sector; TYPE_1__* data; } ;
typedef int grub_uint32_t ;
typedef int grub_err_t ;
struct TYPE_4__ {int mft_size; } ;


 int AF_ALST ;
 int AT_DATA ;
 int BLK_SHR ;
 int GRUB_ERR_BAD_FS ;
 int grub_errno ;
 int grub_error (int ,char*,int ) ;
 int * grub_malloc (int) ;
 int init_attr (TYPE_2__*,struct grub_ntfs_file*) ;
 char* locate_attr (TYPE_2__*,struct grub_ntfs_file*,int ) ;
 scalar_t__ read_mft (TYPE_1__*,int *,int ,int *) ;
 unsigned short u16at (int *,int) ;
 int u32at (char*,int) ;
 int u64at (char*,int) ;

__attribute__((used)) static grub_err_t
init_file (struct grub_ntfs_file *mft, grub_uint32_t mftno)
{
  unsigned short flag;

  mft->inode_read = 1;

  mft->buf = grub_malloc (mft->data->mft_size << BLK_SHR);
  if (mft->buf == ((void*)0))
    return grub_errno;

  if (read_mft (mft->data, mft->buf, mftno, &mft->sector))
    return grub_errno;

  flag = u16at (mft->buf, 0x16);
  if ((flag & 1) == 0)
    return grub_error (GRUB_ERR_BAD_FS, "MFT 0x%X is not in use", mftno);

  if ((flag & 2) == 0)
    {
      char *pa;

      pa = locate_attr (&mft->attr, mft, AT_DATA);
      if (pa == ((void*)0))
 return grub_error (GRUB_ERR_BAD_FS, "no $DATA in MFT 0x%X", mftno);

      if (!pa[8])
 mft->size = u32at (pa, 0x10);
      else
 mft->size = u64at (pa, 0x30);

      if ((mft->attr.flags & AF_ALST) == 0)
 mft->attr.attr_end = 0;
    }
  else
    init_attr (&mft->attr, mft);

  return 0;
}
