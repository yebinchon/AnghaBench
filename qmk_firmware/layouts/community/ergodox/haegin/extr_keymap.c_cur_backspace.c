
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int a; int b; } ;


 int KC_BSPC ;
 TYPE_1__ fib_bspc ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void cur_backspace (qk_tap_dance_state_t *state) {
  int next_fib = fib_bspc.a + fib_bspc.b;
  fib_bspc.a = fib_bspc.b;
  fib_bspc.b = next_fib;
  for (int i=0; i < next_fib; i++) {
    unregister_code(KC_BSPC);
    register_code(KC_BSPC);
  }
}
