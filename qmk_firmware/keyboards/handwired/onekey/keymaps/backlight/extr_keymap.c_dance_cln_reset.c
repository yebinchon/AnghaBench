
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int backlight_step () ;
 int breathing_pulse () ;
 int breathing_toggle () ;

void dance_cln_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (state->count) {
    case 1:

      backlight_step();
      break;
    default:

      break;
  }
}
