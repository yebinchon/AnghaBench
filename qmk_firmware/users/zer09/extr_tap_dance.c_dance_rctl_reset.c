
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int status; } ;


 int DISABLED ;
 int KC_RCTRL ;
 size_t RBW_RCTL ;
 TYPE_1__* rbw_led_keys ;
 int unregister_code (int ) ;

void dance_rctl_reset(qk_tap_dance_state_t *state, void *user_data) {
  unregister_code(KC_RCTRL);
  rbw_led_keys[RBW_RCTL].status = DISABLED;
}
