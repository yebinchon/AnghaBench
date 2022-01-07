
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_enable; } ;


 int SERVERS_CYCLE_TIME_MS ;
 int mp_hal_delay_ms (int) ;
 TYPE_1__ servers_data ;

void servers_start (void) {
    servers_data.do_enable = 1;
    mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS * 3);
}
