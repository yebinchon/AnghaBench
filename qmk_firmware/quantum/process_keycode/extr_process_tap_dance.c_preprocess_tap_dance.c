
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_11__ {scalar_t__ keycode; int interrupted; scalar_t__ interrupting_keycode; scalar_t__ count; } ;
struct TYPE_9__ {TYPE_5__ state; } ;
typedef TYPE_2__ qk_tap_dance_action_t ;
struct TYPE_8__ {int pressed; } ;
struct TYPE_10__ {TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int highest_td ;
 scalar_t__ last_td ;
 int process_tap_dance_action_on_dance_finished (TYPE_2__*) ;
 int reset_tap_dance (TYPE_5__*) ;
 TYPE_2__* tap_dance_actions ;

void preprocess_tap_dance(uint16_t keycode, keyrecord_t *record) {
    qk_tap_dance_action_t *action;

    if (!record->event.pressed) return;

    if (highest_td == -1) return;

    for (int i = 0; i <= highest_td; i++) {
        action = &tap_dance_actions[i];
        if (action->state.count) {
            if (keycode == action->state.keycode && keycode == last_td) continue;
            action->state.interrupted = 1;
            action->state.interrupting_keycode = keycode;
            process_tap_dance_action_on_dance_finished(action);
            reset_tap_dance(&action->state);
        }
    }
}
