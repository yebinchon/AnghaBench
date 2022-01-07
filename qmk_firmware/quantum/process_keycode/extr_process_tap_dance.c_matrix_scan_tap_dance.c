
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {int timer; scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ custom_tapping_term; TYPE_3__ state; } ;
typedef TYPE_1__ qk_tap_dance_action_t ;


 scalar_t__ TAPPING_TERM ;
 int highest_td ;
 int process_tap_dance_action_on_dance_finished (TYPE_1__*) ;
 int reset_tap_dance (TYPE_3__*) ;
 TYPE_1__* tap_dance_actions ;
 scalar_t__ timer_elapsed (int ) ;

void matrix_scan_tap_dance() {
    if (highest_td == -1) return;
    uint16_t tap_user_defined;

    for (uint8_t i = 0; i <= highest_td; i++) {
        qk_tap_dance_action_t *action = &tap_dance_actions[i];
        if (action->custom_tapping_term > 0) {
            tap_user_defined = action->custom_tapping_term;
        } else {
            tap_user_defined = TAPPING_TERM;
        }
        if (action->state.count && timer_elapsed(action->state.timer) > tap_user_defined) {
            process_tap_dance_action_on_dance_finished(action);
            reset_tap_dance(&action->state);
        }
    }
}
