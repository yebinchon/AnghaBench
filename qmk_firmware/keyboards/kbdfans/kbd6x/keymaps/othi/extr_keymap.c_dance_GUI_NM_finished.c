
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LGUI ;
 int NM_MODE ;
 int layer_on (int ) ;
 int register_code (int ) ;

void dance_GUI_NM_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
 register_code (KC_LGUI);
  } else {
    register_code (KC_LGUI);
 layer_on(NM_MODE);
  }
}
