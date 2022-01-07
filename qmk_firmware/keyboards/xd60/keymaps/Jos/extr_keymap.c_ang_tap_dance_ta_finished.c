
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer_toggle; } ;
typedef TYPE_1__ td_ta_state_t ;
struct TYPE_5__ {int count; int pressed; } ;
typedef TYPE_2__ qk_tap_dance_state_t ;


 int GUILAY ;
 int KC_LGUI ;
 int layer_on (int ) ;
 int register_code (int ) ;

__attribute__((used)) static void ang_tap_dance_ta_finished (qk_tap_dance_state_t *state, void *user_data) {
  td_ta_state_t *td_ta = (td_ta_state_t *) user_data;
  if (state->count == 1 && !state->pressed) {
    register_code (KC_LGUI);

    td_ta->layer_toggle = 0;
  } else {
    td_ta->layer_toggle = 1;
    layer_on(GUILAY);

  }
}
