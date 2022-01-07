
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ets_intr_lock () ;
 int ets_intr_unlock () ;
 scalar_t__ system_get_time () ;
 int system_time_high_word ;
 scalar_t__ system_time_low_word ;

void system_time_update(void) {

    ets_intr_lock();
    uint32_t system_time_cur = system_get_time();
    if (system_time_cur < system_time_low_word) {
        system_time_high_word += 1;
    }
    system_time_low_word = system_time_cur;
    ets_intr_unlock();
}
