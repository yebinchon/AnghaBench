
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chVTGetSystemTime () ;
 scalar_t__ current_time_ms ;
 int last_systime ;
 scalar_t__ overflow ;

void timer_clear(void) {
    last_systime = chVTGetSystemTime();
    overflow = 0;
    current_time_ms = 0;
}
