
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPS_RCM_O_CAMERA_CLK_GEN ;
 scalar_t__ APPS_RCM_O_MMCHS_CLK_GEN ;
 scalar_t__ ARCM_BASE ;
 int HWREG (scalar_t__) ;
 unsigned long PRCM_CAMERA ;
 unsigned long PRCM_GSPI ;
 unsigned long PRCM_LSPI ;
 unsigned long PRCM_SDHOST ;
 unsigned long PRCM_SSPI ;
 unsigned long SYS_CLK ;
 unsigned long XTAL_CLK ;

unsigned long PRCMPeripheralClockGet(unsigned long ulPeripheral)
{
  unsigned long ulClockFreq;
  unsigned long ulHiPulseDiv;
  unsigned long ulLoPulseDiv;




  if(((ulPeripheral == PRCM_SSPI) | (ulPeripheral == PRCM_LSPI)
            | (ulPeripheral == PRCM_GSPI)))
  {
    return XTAL_CLK;
  }
  else if(ulPeripheral == PRCM_CAMERA)
  {
    ulHiPulseDiv = ((HWREG(ARCM_BASE + APPS_RCM_O_CAMERA_CLK_GEN) >> 8) & 0x07);
    ulLoPulseDiv = (HWREG(ARCM_BASE + APPS_RCM_O_CAMERA_CLK_GEN)& 0xFF);
  }
  else if(ulPeripheral == PRCM_SDHOST)
  {
    ulHiPulseDiv = ((HWREG(ARCM_BASE + APPS_RCM_O_MMCHS_CLK_GEN) >> 8) & 0x07);
    ulLoPulseDiv = (HWREG(ARCM_BASE + APPS_RCM_O_MMCHS_CLK_GEN)& 0xFF);
  }
  else
  {
    return SYS_CLK;
  }




  ulClockFreq = (240000000/((ulHiPulseDiv + 1) + (ulLoPulseDiv + 1)));




  return ulClockFreq;
}
