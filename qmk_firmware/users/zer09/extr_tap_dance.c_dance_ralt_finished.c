
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int status; } ;



 int ENABLED ;
 int KC_LGUI ;
 int KC_RALT ;
 size_t RBW_RALT ;
 int cur_dance (int *) ;
 TYPE_2__ ralttap_state ;
 TYPE_1__* rbw_led_keys ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void dance_ralt_finished(qk_tap_dance_state_t *state, void *user_data) {
  ralttap_state.state = cur_dance(state);

  switch (ralttap_state.state) {
  case 128:
    rbw_led_keys[RBW_RALT].status = ENABLED;
    unregister_code(KC_LGUI);
    break;
  default:
    register_code(KC_RALT);
    break;
  }
}
