
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;


 unsigned long ADORE ;
 int LED_BRIGHTNESS_HI ;
 int LED_BRIGHTNESS_LO ;
 int UC_LNX ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 unsigned long eeconfig_read_default_layer () ;
 int ergodox_led_all_off () ;
 int ergodox_led_all_on () ;
 int ergodox_led_all_set (int) ;
 int is_adore ;
 int set_unicode_input_mode (int ) ;
 int wait_ms (int) ;

void matrix_init_user(void) {
  uint8_t dl;

  set_unicode_input_mode(UC_LNX);

  ergodox_led_all_on();
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--) {
    ergodox_led_all_set (i);
    wait_ms (5);
  }
  wait_ms(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--) {
    ergodox_led_all_set (i);
    wait_ms (10);
  }
  ergodox_led_all_off();

  if (!eeconfig_is_enabled())
    eeconfig_init();
  dl = eeconfig_read_default_layer ();
  if (dl == (1UL << ADORE)) {
    is_adore = 1;
  }
}
