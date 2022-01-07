
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LALT ;
 int NM_MODE ;
 int layer_off (int ) ;
 int unregister_code (int ) ;

void dance_ALT_NM_reset (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    unregister_code (KC_LALT);
  } else {
    unregister_code (KC_LALT);
 layer_off(NM_MODE);
  }
}
