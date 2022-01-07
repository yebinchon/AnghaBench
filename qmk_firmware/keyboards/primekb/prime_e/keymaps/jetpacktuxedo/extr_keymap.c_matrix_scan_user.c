
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLINK_DURATION ;
 scalar_t__ BLINK_TIMER ;
 int CAPS ;
 int CAPS_LED_PIN ;
 int CAPS_LED_STATE ;
 int togg_indicator (int *,int ) ;

void matrix_scan_user(void) {
    if (CAPS == 1) {

        if (BLINK_TIMER >= BLINK_DURATION) {
            togg_indicator(&CAPS_LED_STATE, CAPS_LED_PIN);
            BLINK_TIMER = 0;
        }
        BLINK_TIMER++;
    }
}
