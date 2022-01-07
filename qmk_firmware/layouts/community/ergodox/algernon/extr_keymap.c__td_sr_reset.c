
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_MSTP ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_3_off () ;
 int unregister_code (int ) ;
 int wait_ms (int) ;

__attribute__((used)) static void
_td_sr_reset (qk_tap_dance_state_t *state, void *user_data) {
  ergodox_right_led_1_off ();
  wait_ms (50);
  ergodox_right_led_2_off ();
  wait_ms (50);
  ergodox_right_led_3_off ();

  if (state->count == 1) {
    unregister_code (KC_MSTP);
  }
}
