
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int semicolon; } ;



 int KC_SCLN ;


 int _NUM ;
 int hold_cur_dance (int *) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 TYPE_1__ tap_state ;

void tap_dance_semicolon_finished(qk_tap_dance_state_t *state, void *user_data) {
  tap_state.semicolon = hold_cur_dance(state);
  switch (tap_state.semicolon) {
    case 128: case 130: register_code(KC_SCLN); break;
    case 129: layer_on(_NUM); break;
  }
}
