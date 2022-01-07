
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;






 int biton32 (int ) ;
 int layer_state ;
 int set_led_blue ;
 int set_led_cyan ;
 int set_led_magenta ;
 int set_led_white ;
 int set_led_yellow ;

void matrix_scan_user(void) {
    uint8_t layer = biton32(layer_state);

    switch (layer) {
        case 131:
            set_led_cyan;
            break;
        case 129:
            set_led_blue;
            break;
        case 128:
            set_led_magenta;
            break;
        case 130:
            set_led_yellow;
        default:
            set_led_white;
            break;
    }
}
