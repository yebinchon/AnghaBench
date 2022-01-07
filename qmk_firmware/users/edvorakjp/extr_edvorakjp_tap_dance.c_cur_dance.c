
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; scalar_t__ interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_TAP ;
 int HOLD ;
 int SINGLE_TAP ;

int cur_dance(qk_tap_dance_state_t *state) {
  if (state->interrupted || !state->pressed) {
    return state->count == 1 ? SINGLE_TAP : DOUBLE_TAP;
  } else {
    return HOLD;
  }
}
