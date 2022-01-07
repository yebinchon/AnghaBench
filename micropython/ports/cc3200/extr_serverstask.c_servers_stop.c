
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_disable; } ;


 int SERVERS_CYCLE_TIME_MS ;
 int mp_hal_delay_ms (int) ;
 scalar_t__ servers_are_enabled () ;
 TYPE_1__ servers_data ;

void servers_stop (void) {
    servers_data.do_disable = 1;
    do {
        mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS);
    } while (servers_are_enabled());
    mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS * 3);
}
