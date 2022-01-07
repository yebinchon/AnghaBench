
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_MSTP ;
 int register_code (int ) ;
 int reset_keyboard () ;
 int reset_tap_dance (TYPE_1__*) ;
 int uprintf (char*) ;
 int wait_ms (int) ;

__attribute__((used)) static void
_td_sr_finished (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    register_code (KC_MSTP);
  }
  if (state->count >= 4) {
    uprintf("CMD:reflash\n");
    wait_ms (1000);
    reset_keyboard ();
    reset_tap_dance (state);
  }
}
