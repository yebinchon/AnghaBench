
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SERVERS_CYCLE_TIME_MS ;
 int mp_hal_delay_ms (scalar_t__) ;
 int sleep_sockets ;

void server_sleep_sockets (void) {
    sleep_sockets = 1;
    mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS + 1);
}
