
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; int interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_TAP ;
 int SINGLE_HOLD ;
 int SINGLE_TAP ;
 int TRIPLE_TAP ;

int cur_dance(qk_tap_dance_state_t *state) {
  int press = 0;
  switch(state->count) {
    case 1:
      press = (state->interrupted || !state->pressed)
        ? SINGLE_TAP
        : SINGLE_HOLD;
      break;
     case 2:
      press = DOUBLE_TAP;
      break;
    case 3:
      press = TRIPLE_TAP;
  }
  return press;
}
