
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_CAPS ;
 int KC_LGUI ;
 int KC_NLCK ;
 int KC_SLCK ;
 int register_code (int ) ;

void dance_lock_finished (qk_tap_dance_state_t *state, void *user_data) {
 switch (state->count) {
  case 1: register_code(KC_LGUI); break;
  case 2: register_code(KC_NLCK); break;
  case 3: register_code(KC_CAPS); break;
  case 4: register_code(KC_SLCK); break;
  default: break;
 }
}
