
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int pyb_rtc_get_time (int*,int*) ;
 int rtc_msec_add (int,int*,int*) ;

void pyb_rtc_calc_future_time (uint32_t a_mseconds, uint32_t *f_seconds, uint16_t *f_mseconds) {
    uint32_t c_seconds;
    uint16_t c_mseconds;

    pyb_rtc_get_time(&c_seconds, &c_mseconds);

    *f_seconds = c_seconds + (a_mseconds / 1000);

    *f_mseconds = a_mseconds % 1000;

    rtc_msec_add (c_mseconds, f_seconds, f_mseconds);
}
