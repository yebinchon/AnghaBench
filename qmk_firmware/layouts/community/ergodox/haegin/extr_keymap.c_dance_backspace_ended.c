
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; scalar_t__ pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int state; } ;


 int HOLD_CTRL ;
 int KC_BSPC ;
 int KC_LCTRL ;
 TYPE_2__ fib_bspc ;
 int register_code (int ) ;

void dance_backspace_ended (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    if (state->pressed) {
      fib_bspc.state = HOLD_CTRL;
      register_code(KC_LCTRL);
    } else {
      register_code(KC_BSPC);
    }
  }
}
