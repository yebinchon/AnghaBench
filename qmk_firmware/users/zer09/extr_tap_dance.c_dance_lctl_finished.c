
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int status; } ;


 int ENABLED ;
 int KC_LCTRL ;
 size_t RBW_LCTL ;
 TYPE_1__* rbw_led_keys ;
 int register_code (int ) ;

void dance_lctl_finished(qk_tap_dance_state_t *state, void *user_data) {
  rbw_led_keys[RBW_LCTL].status = ENABLED;
  register_code(KC_LCTRL);
}
