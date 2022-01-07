
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int KC_CALCULATOR ;
 int KC_COMMA ;




 TYPE_1__ comma_state ;
 int hold_cur_dance (int *) ;
 int layer_invert (int) ;
 int layer_on (int) ;
 int register_code (int ) ;

void comma_finished (qk_tap_dance_state_t *state, void *user_data) {
  comma_state.state = hold_cur_dance(state);
  switch (comma_state.state) {
    case 130: register_code(KC_COMMA); break;
    case 131: layer_on(1); break;
    case 132: layer_invert(4); break;
    case 133: layer_on(2); break;
    case 128: register_code(KC_CALCULATOR); break;
    case 129: layer_on(3);
  }
}
