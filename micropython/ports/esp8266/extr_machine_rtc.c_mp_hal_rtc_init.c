
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int magic ;
typedef int len ;
typedef scalar_t__ int64_t ;
typedef int delta ;
typedef int cal ;


 int MEM_CAL_ADDR ;
 int MEM_DELTA_ADDR ;
 scalar_t__ MEM_MAGIC ;
 int MEM_USER_LEN_ADDR ;
 int MEM_USER_MAGIC_ADDR ;
 scalar_t__ pyb_rtc_alarm0_expiry ;
 scalar_t__ pyb_rtc_alarm0_wake ;
 int rtc_last_ticks ;
 int system_get_rtc_time () ;
 scalar_t__ system_rtc_clock_cali_proc () ;
 int system_rtc_mem_read (int ,scalar_t__*,int) ;
 int system_rtc_mem_write (int ,scalar_t__*,int) ;

void mp_hal_rtc_init(void) {
    uint32_t magic;

    system_rtc_mem_read(MEM_USER_MAGIC_ADDR, &magic, sizeof(magic));
    if (magic != MEM_MAGIC) {
        magic = MEM_MAGIC;
        system_rtc_mem_write(MEM_USER_MAGIC_ADDR, &magic, sizeof(magic));
        uint32_t cal = system_rtc_clock_cali_proc();
        int64_t delta = 0;
        system_rtc_mem_write(MEM_CAL_ADDR, &cal, sizeof(cal));
        system_rtc_mem_write(MEM_DELTA_ADDR, &delta, sizeof(delta));
        uint32_t len = 0;
        system_rtc_mem_write(MEM_USER_LEN_ADDR, &len, sizeof(len));
    }

    rtc_last_ticks = system_get_rtc_time();


    pyb_rtc_alarm0_wake = 0;
    pyb_rtc_alarm0_expiry = 0;
}
