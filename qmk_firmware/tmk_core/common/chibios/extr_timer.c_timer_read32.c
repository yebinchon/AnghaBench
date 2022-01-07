
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ systime_t ;


 scalar_t__ MS2ST (scalar_t__) ;
 scalar_t__ ST2MS (scalar_t__) ;
 scalar_t__ chVTGetSystemTime () ;
 scalar_t__ current_time_ms ;
 scalar_t__ last_systime ;
 scalar_t__ overflow ;

uint32_t timer_read32(void) {

    systime_t current_systime = chVTGetSystemTime();
    systime_t elapsed = current_systime - last_systime + overflow;
    uint32_t elapsed_ms = ST2MS(elapsed);
    current_time_ms += elapsed_ms;
    overflow = elapsed - MS2ST(elapsed_ms);
    last_systime = current_systime;

    return current_time_ms;
}
