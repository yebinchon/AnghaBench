
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int mp_hal_ticks_ms () ;

time_t time(time_t *t) {
    return mp_hal_ticks_ms() / 1000;
}
