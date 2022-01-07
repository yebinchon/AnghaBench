
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_Device_t ;


 scalar_t__ ADSL_DILV_BASE ;
 scalar_t__ BRAM_BASE ;
 int IFX_MEI_DMAWrite (int *,scalar_t__,int *,int) ;
 scalar_t__ IRAM0_BASE ;
 scalar_t__ IRAM1_BASE ;

__attribute__((used)) static void
IFX_MEI_FuseInit (DSL_DEV_Device_t * pDev)
{
 u32 data = 0;
 IFX_MEI_DMAWrite (pDev, IRAM0_BASE, &data, 1);
 IFX_MEI_DMAWrite (pDev, IRAM0_BASE + 4, &data, 1);
 IFX_MEI_DMAWrite (pDev, IRAM1_BASE, &data, 1);
 IFX_MEI_DMAWrite (pDev, IRAM1_BASE + 4, &data, 1);
 IFX_MEI_DMAWrite (pDev, BRAM_BASE, &data, 1);
 IFX_MEI_DMAWrite (pDev, BRAM_BASE + 4, &data, 1);
 IFX_MEI_DMAWrite (pDev, ADSL_DILV_BASE, &data, 1);
 IFX_MEI_DMAWrite (pDev, ADSL_DILV_BASE + 4, &data, 1);
}
