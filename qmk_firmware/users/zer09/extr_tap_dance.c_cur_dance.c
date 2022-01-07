
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DEFAULT_HOLD ;
 int DEFAULT_TAP ;
 int DOUBLE_HOLD ;
 int DOUBLE_TAP ;
 int SINGLE_HOLD ;
 int SINGLE_TAP ;
 int TRIPLE_HOLD ;
 int TRIPLE_TAP ;

int cur_dance(qk_tap_dance_state_t *state) {
  switch (state->count) {
  case 1:
    return state->pressed == 0 ? SINGLE_TAP : SINGLE_HOLD;
  case 2:
    return state->pressed == 0 ? DOUBLE_TAP : DOUBLE_HOLD;
  case 3:
    return state->pressed == 0 ? TRIPLE_TAP : TRIPLE_HOLD;
  default:
    return state->pressed == 0 ? DEFAULT_TAP : DEFAULT_HOLD;
  }
}
