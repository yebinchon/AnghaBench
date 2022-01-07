
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_6__ {int b; scalar_t__ a; int state; } ;


 int BSPC_WORD ;
 int KC_BSPC ;
 int KC_LALT ;
 int cur_backspace (TYPE_1__*) ;
 TYPE_2__ fib_bspc ;
 int register_code (int ) ;

void dance_backspace (qk_tap_dance_state_t *state, void *user_data) {


  if (state->count == 4) {
    register_code(KC_LALT);
    fib_bspc.state = BSPC_WORD;
    fib_bspc.a = 0;
    fib_bspc.b = 1;
  }



  if (state->count == 2) {
    register_code(KC_BSPC);
  }
  if (state->count > 1) {
    cur_backspace(state);
  }
}
