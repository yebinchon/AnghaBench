
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ets_event_poll () ;
 scalar_t__ system_get_time () ;

void mp_hal_delay_us(uint32_t us) {
    uint32_t start = system_get_time();
    while (system_get_time() - start < us) {
        ets_event_poll();
    }
}
