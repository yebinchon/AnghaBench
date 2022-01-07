
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ system_time_high_word ;
 scalar_t__ system_time_low_word ;
 int system_time_update () ;

uint32_t mp_hal_ticks_ms(void) {

    system_time_update();
    return ((uint64_t)system_time_high_word << 32 | (uint64_t)system_time_low_word) / 1000;
}
