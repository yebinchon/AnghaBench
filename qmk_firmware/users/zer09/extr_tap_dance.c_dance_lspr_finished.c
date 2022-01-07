
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
 int KC_LALT ;
 int KC_LGUI ;
 size_t RBW_LSPR ;
 int cur_dance (int *) ;
 TYPE_2__ lsprtap_state ;
 TYPE_1__* rbw_led_keys ;
 int register_code (int ) ;

void dance_lspr_finished(qk_tap_dance_state_t *state, void *user_data) {
  lsprtap_state.state = cur_dance(state);

  switch (lsprtap_state.state) {
  case 128:
    rbw_led_keys[RBW_LSPR].status = ENABLED;
    register_code(KC_LALT);
    break;
  default:
    register_code(KC_LGUI);
    break;
  }
}
