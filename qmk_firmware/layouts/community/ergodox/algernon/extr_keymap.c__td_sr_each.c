
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int skip_leds ;
 int wait_ms (int) ;

__attribute__((used)) static void
_td_sr_each (qk_tap_dance_state_t *state, void *user_data) {
  skip_leds = 1;

  switch (state->count) {
  case 1:
    ergodox_right_led_3_on ();
    break;
  case 2:
    ergodox_right_led_2_on ();
    break;
  case 3:
    ergodox_right_led_1_on ();
    break;
  case 4:
    ergodox_right_led_3_off ();
    wait_ms (50);
    ergodox_right_led_2_off ();
    wait_ms (50);
    ergodox_right_led_1_off ();
    break;
  }
}
