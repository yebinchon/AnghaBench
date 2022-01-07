
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int is_pressed; int kc_tap; int timer; } ;
typedef TYPE_1__ tap_hold_t ;


 size_t TH_EVENTS_COUNT ;
 int register_code (int ) ;
 TYPE_1__* th_events ;
 int timer_read () ;
 int unregister_code (int ) ;

void taphold_tapped(uint8_t index, bool pressed) {
    if (index >= TH_EVENTS_COUNT) { return; }

    tap_hold_t *th_event = &th_events[index];

    if (pressed) {
        th_event->timer = timer_read();
        th_event->is_pressed = 1;
    } else if (th_event->is_pressed) {
        register_code(th_event->kc_tap);
        unregister_code(th_event->kc_tap);
        th_event->is_pressed = 0;
    }
}
