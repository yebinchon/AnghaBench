
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int) ;
 int MEI_HALF_WORD_SWAP (int) ;
 int MEI_TO_ARC_MAILBOX ;
 int ME_DX_AD ;
 scalar_t__ ME_DX_DATA ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_DMAWrite (DSL_DEV_Device_t * pDev, u32 destaddr,
   u32 * databuff, u32 databuffsize)
{
 u32 *p = databuff;
 u32 temp;

 if (destaddr & 3)
  return DSL_DEV_MEI_ERR_FAILURE;


 IFX_MEI_LongWordWriteOffset (pDev, ME_DX_AD, destaddr);


 while (databuffsize--) {
  temp = *p;
  if (destaddr == MEI_TO_ARC_MAILBOX)
   MEI_HALF_WORD_SWAP (temp);
  IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_DX_DATA, temp);
  p++;
 }

 return DSL_DEV_MEI_ERR_SUCCESS;

}
