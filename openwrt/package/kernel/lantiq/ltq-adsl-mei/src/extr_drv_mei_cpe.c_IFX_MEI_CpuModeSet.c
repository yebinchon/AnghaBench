
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;
typedef int DSL_DEV_CpuMode_t ;





 int DSL_DEV_MEI_ERR_FAILURE ;
 int IFX_MEI_HaltArc (int *) ;
 int IFX_MEI_ResetARC (int *) ;
 int IFX_MEI_RunArc (int *) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_CpuModeSet (DSL_DEV_Device_t *pDev,
     DSL_DEV_CpuMode_t mode)
{
 DSL_DEV_MeiError_t err_ret = DSL_DEV_MEI_ERR_FAILURE;
 switch (mode) {
 case 130:
  err_ret = IFX_MEI_HaltArc (pDev);
  break;
 case 128:
  err_ret = IFX_MEI_RunArc (pDev);
  break;
 case 129:
  err_ret = IFX_MEI_ResetARC (pDev);
  break;
 default:
  break;
 }
 return err_ret;
}
