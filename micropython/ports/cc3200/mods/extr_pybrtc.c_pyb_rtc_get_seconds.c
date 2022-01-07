
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int pyb_rtc_get_time (int *,int *) ;

uint32_t pyb_rtc_get_seconds (void) {
    uint32_t seconds;
    uint16_t mseconds;
    pyb_rtc_get_time(&seconds, &mseconds);
    return seconds;
}
