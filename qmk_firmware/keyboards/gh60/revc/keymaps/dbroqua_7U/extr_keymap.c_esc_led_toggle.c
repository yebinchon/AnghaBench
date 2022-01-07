
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esc_led ;
 int gh60_esc_led_off () ;
 int gh60_esc_led_on () ;

void esc_led_toggle(void) {
    if (esc_led == 0){
        esc_led = 1;
        gh60_esc_led_on();
    } else {
        esc_led = 0;
        gh60_esc_led_off();
    }
}
