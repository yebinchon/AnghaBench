
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPS_CONFIG_BASE ;
 scalar_t__ APPS_CONFIG_O_DMA_DONE_INT_STS_RAW ;
 int HWREG (scalar_t__) ;
 scalar_t__ MMCHS_O_STAT ;

unsigned long
SDHostIntStatus(unsigned long ulBase)
{
  unsigned long ulIntStatus;




  ulIntStatus = HWREG(APPS_CONFIG_BASE + APPS_CONFIG_O_DMA_DONE_INT_STS_RAW);
  ulIntStatus = (ulIntStatus << 30);




  ulIntStatus |= (HWREG(ulBase + MMCHS_O_STAT) & 0x3FFFFFFF);

  return(ulIntStatus);
}
