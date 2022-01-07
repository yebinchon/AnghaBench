
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int pressed; int interrupted; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int DOUBLE_HOLD ;
 int DOUBLE_SINGLE_TAP ;
 int DOUBLE_TAP ;
 int SINGLE_HOLD ;
 int SINGLE_TAP ;
 int UNKNOWN_TAP ;

int cur_dance(qk_tap_dance_state_t *state) {
    switch (state->count) {
        case 1:
            if (state->interrupted || state->pressed == 0) {
                return SINGLE_TAP;
            }
            return SINGLE_HOLD;
        case 2:
            if (state->interrupted) {
                return DOUBLE_SINGLE_TAP;
            }
            if (state->pressed) {
                return DOUBLE_HOLD;
            }
            return DOUBLE_TAP;
    }
    return UNKNOWN_TAP;
}
