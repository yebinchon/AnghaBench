
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {scalar_t__ lower; } ;


 scalar_t__ DOUBLE_TAP ;
 int KC_ESC ;
 scalar_t__ NONE ;
 int _LOWER ;
 int layer_off (int ) ;
 TYPE_1__ td_status ;
 int unregister_code (int ) ;

void td_lower_reset(qk_tap_dance_state_t *state, void *user_data) {
  if (td_status.lower == DOUBLE_TAP) {
    unregister_code(KC_ESC);
  }
  layer_off(_LOWER);
  td_status.lower = NONE;
}
