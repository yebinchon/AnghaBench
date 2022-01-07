
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef int delta ;
typedef int cal ;


 int MEM_CAL_ADDR ;
 int MEM_DELTA_ADDR ;
 scalar_t__ rtc_last_ticks ;
 scalar_t__ system_get_rtc_time () ;
 int system_rtc_mem_read (int ,...) ;
 int system_rtc_mem_write (int ,int*,int) ;

uint64_t pyb_rtc_get_us_since_2000() {
    uint32_t cal;
    int64_t delta;
    uint32_t rtc_ticks;

    system_rtc_mem_read(MEM_CAL_ADDR, &cal, sizeof(cal));
    system_rtc_mem_read(MEM_DELTA_ADDR, &delta, sizeof(delta));




    rtc_ticks = system_get_rtc_time();
    if (rtc_ticks < rtc_last_ticks) {

        delta += (uint64_t)cal << 20;
        system_rtc_mem_write(MEM_DELTA_ADDR, &delta, sizeof(delta));
    }
    rtc_last_ticks = rtc_ticks;

    return (((uint64_t)rtc_ticks * cal) >> 12) + delta;
}
