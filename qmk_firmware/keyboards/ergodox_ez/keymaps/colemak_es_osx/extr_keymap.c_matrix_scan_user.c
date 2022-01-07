
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FN ;
 int MOUSE ;
 int NUM ;
 int QWERTY ;
 int default_layer_state ;
 int ergodox_board_led_off () ;
 scalar_t__ layer_state_cmp (int ,int ) ;
 int led_1_off () ;
 int led_1_on () ;
 int led_2_off () ;
 int led_2_on () ;
 int led_3_off () ;
 int led_3_on () ;

void matrix_scan_user(void) {

    ergodox_board_led_off();
    led_1_off();
    led_2_off();
    led_3_off();

    if(layer_state_cmp(default_layer_state, QWERTY)) {
        led_3_on();
    }

    if(layer_state_cmp(default_layer_state, FN)) {
        led_2_on();
    }

    if(layer_state_cmp(default_layer_state, NUM)) {
        led_2_on();
        led_3_on();
    }

    if(layer_state_cmp(default_layer_state, MOUSE)) {
        led_1_on();
    }
}
