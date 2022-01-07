
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_BRIGHTNESS_HI ;
 int LED_BRIGHTNESS_LO ;
 int ergodox_led_all_off () ;
 int ergodox_led_all_on () ;
 int ergodox_led_all_set (int) ;
 int rgblight_effect_knight (int) ;
 int rgblight_enable () ;
 int rgblight_init () ;
 int rgblight_setrgb (int,int,int) ;
 int wait_ms (int) ;

void matrix_init_user(void)
{

  ergodox_led_all_on();
  rgblight_init();
  rgblight_enable();
  rgblight_setrgb(255, 0, 0);
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--)
  {
    ergodox_led_all_set(i);
    wait_ms(5);
  }
  rgblight_setrgb(255, 255, 0);
  wait_ms(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--)
  {
    ergodox_led_all_set(i);
    wait_ms(10);
  }
  rgblight_setrgb(0, 255, 255);
  ergodox_led_all_off();
  wait_ms(1000);

  rgblight_effect_knight(50);
}
