
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupted; int count; scalar_t__ pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_HOLD ;
 int SINGLE_HOLD ;
 int TRIPLE_HOLD ;

int cur_dance (qk_tap_dance_state_t *state) {
  if (state->interrupted == 0 || state->pressed) {
    if (state->count < 2) return SINGLE_HOLD;
    if (state->count < 3) return DOUBLE_HOLD;
    else return TRIPLE_HOLD;
  }
  else return 9;
}
