
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int is_pressed; int kc_hold; int timer; } ;
typedef TYPE_1__ tap_hold_t ;


 scalar_t__ LONGPRESS_DELAY ;
 size_t TH_EVENTS_COUNT ;
 int register_code (int ) ;
 TYPE_1__* th_events ;
 scalar_t__ timer_elapsed (int ) ;
 int unregister_code (int ) ;

void matrix_scan_user() {
    for (uint8_t index = 0 ; index < TH_EVENTS_COUNT ; ++index ) {
        tap_hold_t *th_event = &th_events[index];
        if ( th_event->is_pressed && timer_elapsed(th_event->timer) > LONGPRESS_DELAY) {
            register_code(th_event->kc_hold);
            unregister_code(th_event->kc_hold);
            th_event->is_pressed = 0;
        }
    }
}
