
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int biton32 (int ) ;
 int eeconfig_read_default_layer () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_on () ;

void default_layer_led_set(void) {
    switch (biton32(eeconfig_read_default_layer())) {
      case 129:

        ergodox_right_led_2_on();
        break;
      case 128:

        ergodox_right_led_3_on();
        break;
    };
}
