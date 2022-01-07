
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PRCMRTCInUseSet () ;
 scalar_t__ MAP_PRCMSysResetCauseGet () ;
 scalar_t__ PRCM_POWER_ON ;
 int pyb_rtc_reset () ;

__attribute__ ((section (".boot")))
void pyb_rtc_pre_init(void) {

    if (MAP_PRCMSysResetCauseGet() == PRCM_POWER_ON) {

        MAP_PRCMRTCInUseSet();

        pyb_rtc_reset();
    }
}
