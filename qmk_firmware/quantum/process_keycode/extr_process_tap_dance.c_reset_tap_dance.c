
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keycode; int interrupted; int finished; scalar_t__ interrupting_keycode; scalar_t__ count; scalar_t__ pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
typedef int qk_tap_dance_action_t ;


 size_t QK_TAP_DANCE ;
 scalar_t__ last_td ;
 int process_tap_dance_action_on_reset (int *) ;
 int * tap_dance_actions ;

void reset_tap_dance(qk_tap_dance_state_t *state) {
    qk_tap_dance_action_t *action;

    if (state->pressed) return;

    action = &tap_dance_actions[state->keycode - QK_TAP_DANCE];

    process_tap_dance_action_on_reset(action);

    state->count = 0;
    state->interrupted = 0;
    state->finished = 0;
    state->interrupting_keycode = 0;
    last_td = 0;
}
