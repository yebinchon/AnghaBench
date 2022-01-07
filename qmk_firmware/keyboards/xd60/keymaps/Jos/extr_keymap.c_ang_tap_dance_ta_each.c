
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layer_toggle; } ;
typedef TYPE_1__ td_ta_state_t ;
typedef int qk_tap_dance_state_t ;


 int KC_LGUI ;
 int unregister_code (int ) ;

__attribute__((used)) static void ang_tap_dance_ta_each (qk_tap_dance_state_t *state, void *user_data) {
  td_ta_state_t *td_ta = (td_ta_state_t *) user_data;

  if (!td_ta->layer_toggle) {
    unregister_code (KC_LGUI);
  }
}
