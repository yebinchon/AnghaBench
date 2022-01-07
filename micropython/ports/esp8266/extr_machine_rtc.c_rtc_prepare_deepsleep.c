
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int delta ;


 int MEM_DELTA_ADDR ;
 scalar_t__ pyb_rtc_get_us_since_2000 () ;
 int system_rtc_mem_write (int ,scalar_t__*,int) ;

void rtc_prepare_deepsleep(uint64_t sleep_us) {

    int64_t delta = pyb_rtc_get_us_since_2000() + sleep_us;
    system_rtc_mem_write(MEM_DELTA_ADDR, &delta, sizeof(delta));
}
