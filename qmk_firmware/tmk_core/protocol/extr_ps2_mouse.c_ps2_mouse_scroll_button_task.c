
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int buttons; int x; int y; int v; int h; } ;
typedef TYPE_1__ report_mouse_t ;


 int PRESS_SCROLL_BUTTONS ;
 int PS2_MOUSE_SCROLL_BTN_MASK ;
 scalar_t__ PS2_MOUSE_SCROLL_BTN_SEND ;
 int PS2_MOUSE_SCROLL_DIVISOR_H ;
 int PS2_MOUSE_SCROLL_DIVISOR_V ;
 int RELEASE_SCROLL_BUTTONS ;
 int _delay_ms (int) ;
 int host_mouse_send (TYPE_1__*) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

__attribute__((used)) static inline void ps2_mouse_scroll_button_task(report_mouse_t *mouse_report) {
    static enum {
        SCROLL_NONE,
        SCROLL_BTN,
        SCROLL_SENT,
    } scroll_state = SCROLL_NONE;
    static uint16_t scroll_button_time = 0;

    if (PS2_MOUSE_SCROLL_BTN_MASK == (mouse_report->buttons & (PS2_MOUSE_SCROLL_BTN_MASK))) {


        if (scroll_state == SCROLL_NONE) {
            scroll_button_time = timer_read();
            scroll_state = SCROLL_BTN;
        }


        if (mouse_report->x || mouse_report->y) {
            scroll_state = SCROLL_SENT;
            mouse_report->v = -mouse_report->y / (PS2_MOUSE_SCROLL_DIVISOR_V);
            mouse_report->h = mouse_report->x / (PS2_MOUSE_SCROLL_DIVISOR_H);
            mouse_report->x = 0;
            mouse_report->y = 0;






        }
    } else if (0 == (PS2_MOUSE_SCROLL_BTN_MASK & mouse_report->buttons)) {
        scroll_state = SCROLL_NONE;
    }

    RELEASE_SCROLL_BUTTONS;
}
