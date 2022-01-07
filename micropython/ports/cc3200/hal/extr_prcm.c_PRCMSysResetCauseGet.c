
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GPRCM_BASE ;
 scalar_t__ GPRCM_O_APPS_RESET_CAUSE ;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_WAKE_STATUS ;
 int HWREG (scalar_t__) ;
 int MAP_PRCMHIBRegRead (scalar_t__) ;
 unsigned long PRCM_HIB_EXIT ;
 unsigned long PRCM_POWER_ON ;

unsigned long PRCMSysResetCauseGet(void)
{
  unsigned long ulWakeupStatus;




  ulWakeupStatus = (HWREG(GPRCM_BASE+ GPRCM_O_APPS_RESET_CAUSE) & 0xFF);




  if(ulWakeupStatus == PRCM_POWER_ON)
  {
    if(MAP_PRCMHIBRegRead(HIB3P3_BASE + HIB3P3_O_MEM_HIB_WAKE_STATUS) & 0x1)
    {
      ulWakeupStatus = PRCM_HIB_EXIT;
    }
  }




  return ulWakeupStatus;
}
