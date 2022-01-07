
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gh60_esc_led_off () ;
 int gh60_esc_led_on () ;
 int gh60_wasd_leds_off () ;
 int gh60_wasd_leds_on () ;
 int layer_state ;

void matrix_scan_user(void) {



    uint32_t layer = layer_state;
    if (layer & (1<<1)) {
        gh60_wasd_leds_on();
    } else {
        gh60_wasd_leds_off();
    }

    if (layer & (1<<2)) {
        gh60_esc_led_on();
    } else {
        gh60_esc_led_off();
    }
}
