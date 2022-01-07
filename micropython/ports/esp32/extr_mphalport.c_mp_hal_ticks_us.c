
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int esp_timer_get_time () ;

uint32_t mp_hal_ticks_us(void) {
    return esp_timer_get_time();
}
