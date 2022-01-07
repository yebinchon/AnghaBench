
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_Device_t ;


 int HOST_MSTR ;
 int IFX_MEI_EMSG (char*,int) ;
 int IFX_MEI_LongWordReadOffset (int *,int,int*) ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int) ;


 scalar_t__ ME_DBG_MASTER ;

__attribute__((used)) static void
IFX_MEI_ControlModeSet (DSL_DEV_Device_t * pDev, int mode)
{
 u32 temp = 0x0;

 IFX_MEI_LongWordReadOffset (pDev, (u32) ME_DBG_MASTER, &temp);
 switch (mode) {
 case 129:
  temp &= ~(HOST_MSTR);
  break;
 case 128:
  temp |= (HOST_MSTR);
  break;
 default:
  IFX_MEI_EMSG ("IFX_MEI_ControlModeSet: unkonwn mode [%d]\n", mode);
  return;
 }
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_DBG_MASTER, temp);
}
