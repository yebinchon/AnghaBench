
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPS_CONFIG_BASE ;
 scalar_t__ APPS_CONFIG_O_DMA_DONE_INT_STS_RAW ;
 int HWREG (scalar_t__) ;
 scalar_t__ MCASP_O_RXSTAT ;
 scalar_t__ MCASP_O_TXSTAT ;

unsigned long I2SIntStatus(unsigned long ulBase)
{
  unsigned long ulStatus;




  ulStatus =
    HWREG(APPS_CONFIG_BASE + APPS_CONFIG_O_DMA_DONE_INT_STS_RAW) << 20;

  ulStatus &= 0xC0000000;




  ulStatus |= HWREG(ulBase + MCASP_O_TXSTAT);




  ulStatus |= HWREG(ulBase + MCASP_O_RXSTAT) << 16;




  return ulStatus;
}
