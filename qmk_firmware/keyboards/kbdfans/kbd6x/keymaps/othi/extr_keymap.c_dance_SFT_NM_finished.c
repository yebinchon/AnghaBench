
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LSFT ;
 int MOD_LSFT ;
 int NM_MODE ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int set_oneshot_mods (int ) ;

void dance_SFT_NM_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
 register_code (KC_LSFT);
 set_oneshot_mods(MOD_LSFT);
  } else {
    register_code (KC_LSFT);
 layer_on(NM_MODE);
  }
}
