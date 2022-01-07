
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_DEL ;
 int KC_LALT ;
 int KC_LCTL ;
 int unregister_code (int ) ;

void ctrlaltdel_up (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 3) {
    unregister_code (KC_DEL);
    unregister_code (KC_LALT);
    unregister_code (KC_LCTL);
  } else {
  }
}
