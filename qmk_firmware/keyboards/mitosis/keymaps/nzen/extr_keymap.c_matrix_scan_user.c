
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int biton32 (int ) ;
 int layer_state ;
 int set_led_blue ;
 int set_led_cyan ;
 int set_led_green ;
 int set_led_off ;
 int set_led_red ;
 int set_led_yellow ;

void matrix_scan_user(void) {
    uint8_t layer = biton32(layer_state);

    switch (layer) {
     case 130:
     case 128:
      set_led_off;
      break;
        case 132:
            set_led_blue;
            break;
        case 131:
            set_led_red;
            break;
        case 133:
            set_led_green;
            break;
        case 134:
            set_led_yellow;
            break;
        case 129:
            set_led_cyan;
            break;
        default:
            break;
   }
}
