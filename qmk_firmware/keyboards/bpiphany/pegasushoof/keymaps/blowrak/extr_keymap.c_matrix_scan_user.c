
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;




 int biton32 (int ) ;
 int layer_state ;
 int ph_caps_led_off () ;
 int ph_caps_led_on () ;
 int ph_sclk_led_off () ;
 int ph_sclk_led_on () ;

void matrix_scan_user(void)
{
 uint8_t layer = biton32(layer_state);
 switch (layer) {
  case 129:
   ph_caps_led_on();
   ph_sclk_led_off();
   break;
  case 128:
   ph_sclk_led_on();
   ph_caps_led_off();
   break;
 }
}
