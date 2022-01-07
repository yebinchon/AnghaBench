
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int MAP_PRCMRTCGet (int *,int *) ;
 int RTC_CYCLES_U16MS (int ) ;

void pyb_rtc_get_time (uint32_t *secs, uint16_t *msecs) {
    uint16_t cycles;
    MAP_PRCMRTCGet (secs, &cycles);
    *msecs = RTC_CYCLES_U16MS(cycles);
}
