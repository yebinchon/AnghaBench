
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int C (int ) ;
 int KC_INS ;
 int KC_O ;
 int S (int ) ;
 int reset_tap_dance (TYPE_1__*) ;
 int tap_code16 (int ) ;

void td_common(qk_tap_dance_state_t *state, void *user_data) {
  switch (state->count) {
    case 1:


      tap_code16(C(KC_O));
      reset_tap_dance(state);
      break;
    case 2:



      tap_code16(S(KC_INS));
      reset_tap_dance(state);
      break;
  }
}
