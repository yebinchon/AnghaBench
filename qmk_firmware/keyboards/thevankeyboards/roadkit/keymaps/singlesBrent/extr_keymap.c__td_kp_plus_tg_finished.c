
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_KP_PLUS ;
 int _L1 ;
 int _L2 ;
 int _L3 ;
 int backlight_set (int) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;

void _td_kp_plus_tg_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    register_code(KC_KP_PLUS);
  } else if (state->count == 2) {

    backlight_set(2);
 layer_on(_L1);
 layer_off(_L2);
 layer_off(_L3);
  }
}
