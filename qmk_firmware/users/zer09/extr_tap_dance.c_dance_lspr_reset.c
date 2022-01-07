
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int status; } ;


 int DISABLED ;

 int KC_LALT ;
 int KC_LGUI ;
 size_t RBW_LSPR ;
 TYPE_2__ lsprtap_state ;
 TYPE_1__* rbw_led_keys ;
 int unregister_code (int ) ;

void dance_lspr_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (lsprtap_state.state) {
  case 128:
    unregister_code(KC_LALT);
    rbw_led_keys[RBW_LSPR].status = DISABLED;
    break;
  default:
    unregister_code(KC_LGUI);
    break;
  }
}
