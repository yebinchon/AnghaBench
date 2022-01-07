
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; scalar_t__ interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_SINGLE_TAP ;
 int DOUBLE_TAP ;
 int SINGLE_HOLD ;
 int SINGLE_TAP ;
 int UNKNOWN_TAPS ;

int cur_dance (qk_tap_dance_state_t *state) {
    if (state->count == 1) {
      if (state->interrupted || !state->pressed) {
        return SINGLE_TAP;
      } else {
        return SINGLE_HOLD;
      }
    }
    if (state->count == 2) {
      if (state->interrupted) {
        return DOUBLE_SINGLE_TAP;
      } else if (!state->pressed) {
        return DOUBLE_TAP;
      }
    }
    return UNKNOWN_TAPS;
}
