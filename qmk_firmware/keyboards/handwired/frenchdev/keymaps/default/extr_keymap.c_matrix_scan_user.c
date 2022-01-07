
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;





 int biton32 (int ) ;
 int frenchdev_led_1_off () ;
 int frenchdev_led_1_on () ;
 int frenchdev_led_2_off () ;
 int frenchdev_led_2_on () ;
 int layer_state ;

void matrix_scan_user(void) {
    uint8_t layer = biton32(layer_state);

    frenchdev_led_1_off();
    frenchdev_led_2_off();
    switch (layer) {
        case 130:
            frenchdev_led_2_on();
            break;
        case 128:
            frenchdev_led_1_on();
            break;
        case 129:
           frenchdev_led_1_on();
           frenchdev_led_2_on();
        default:

            break;
    }
}
