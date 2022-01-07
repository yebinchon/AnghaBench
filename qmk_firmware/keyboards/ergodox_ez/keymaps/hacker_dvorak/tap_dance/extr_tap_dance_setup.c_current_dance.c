
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; scalar_t__ pressed; scalar_t__ interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_HOLD ;
 int DOUBLE_SINGLE_TAP ;
 int DOUBLE_TAP ;
 int SINGLE_HOLD ;
 int SINGLE_TAP ;
 int TRIPLE_HOLD ;
 int TRIPLE_SINGLE_TAP ;
 int TRIPLE_TAP ;

int current_dance(qk_tap_dance_state_t *state) {
    int current_state = 0;
    if (state->count == 1) {
        if (state->interrupted || !state->pressed) {
            current_state = SINGLE_TAP;
        } else {
            current_state = SINGLE_HOLD;
        }
    } else if (state->count == 2) {





        if (state->interrupted) {
            current_state = DOUBLE_SINGLE_TAP;
        } else if (state->pressed) {
            current_state = DOUBLE_HOLD;
        } else {
            current_state = DOUBLE_TAP;
        }
    } else if (state->count == 3) {
        if (state->interrupted) {
            current_state = TRIPLE_SINGLE_TAP;
        } else if (state->pressed) {
            current_state = TRIPLE_HOLD;
        } else {
            current_state = TRIPLE_TAP;
        }
    }
    return current_state;
}
