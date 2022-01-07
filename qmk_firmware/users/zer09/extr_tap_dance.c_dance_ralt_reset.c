
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

 int KC_RALT ;
 int KC_RGUI ;
 size_t RBW_RALT ;
 TYPE_2__ ralttap_state ;
 TYPE_1__* rbw_led_keys ;
 int unregister_code (int ) ;

void dance_ralt_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (ralttap_state.state) {
  case 128:
    unregister_code(KC_RGUI);
    rbw_led_keys[RBW_RALT].status = DISABLED;
    break;
  default:
    unregister_code(KC_RALT);
    break;
  }
}
