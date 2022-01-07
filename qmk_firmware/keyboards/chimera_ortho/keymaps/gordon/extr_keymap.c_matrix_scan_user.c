
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int _delay_ms (int) ;
 int biton32 (int ) ;
 int layer_state ;
 int set_led_blue ;
 int set_led_green ;
 int set_led_magenta ;
 int set_led_red ;
 int set_led_yellow ;

void matrix_scan_user(void) {
    uint8_t layer = biton32(layer_state);

    switch (layer) {
      case 129:
        set_led_green;
        break;
      case 132:
        set_led_yellow;
        break;
      case 130:
        set_led_blue;
        break;
      case 128:
        set_led_red;
        break;
      case 131:
        set_led_magenta;
        break;
      case 133:
        set_led_green;
        _delay_ms(45);
        set_led_red;
        _delay_ms(45);
        break;
      case 134:
        set_led_green;
        _delay_ms(45);
        set_led_blue;
        _delay_ms(45);
        break;
      default:
        set_led_green;
        break;
    }
}
