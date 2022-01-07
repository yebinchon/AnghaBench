
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LCTL ;
 int MOD_LCTL ;
 int NM_MODE ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int set_oneshot_mods (int ) ;

void dance_CTL_NM_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
 set_oneshot_mods(MOD_LCTL);
  } else {
    register_code (KC_LCTL);
 layer_on(NM_MODE);
  }
}
