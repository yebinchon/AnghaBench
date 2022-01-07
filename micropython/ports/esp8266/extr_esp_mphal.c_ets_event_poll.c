
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_loop_iter () ;
 int mp_handle_pending () ;

void ets_event_poll(void) {
    ets_loop_iter();
    mp_handle_pending();
}
