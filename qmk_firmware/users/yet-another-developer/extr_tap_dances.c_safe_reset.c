
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int reset_keyboard () ;
 int reset_tap_dance (TYPE_1__*) ;

void safe_reset(qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 3) {

    reset_keyboard();
    reset_tap_dance(state);
  }
}
