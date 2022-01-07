
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_BRIGHTNESS_HI ;
 int LED_BRIGHTNESS_LO ;
 int ergodox_led_all_off () ;
 int ergodox_led_all_on () ;
 int ergodox_led_all_set (int) ;
 int wait_ms (int) ;

void keyboard_post_init_user_local(void) {
  ergodox_led_all_on();
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--) {
    ergodox_led_all_set(i);
    wait_ms(5);
  }
  wait_ms(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--) {
    ergodox_led_all_set(i);
    wait_ms(10);
  }
  ergodox_led_all_off();


  ergodox_led_all_set(LED_BRIGHTNESS_HI);
}
