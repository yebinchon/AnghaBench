
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ timer_read64 () ;

void CLK_delay_ms(uint64_t msec) {
    msec += timer_read64();
    while (msec > timer_read64()) {
    }
}
