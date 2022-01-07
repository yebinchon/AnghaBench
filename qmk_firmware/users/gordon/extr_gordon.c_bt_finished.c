
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;





 int KC_F3 ;
 TYPE_1__ S1_state ;


 int _MACROS ;
 int cur_dance (int *) ;
 int layer_invert (int) ;
 int layer_on (int) ;
 int register_code (int ) ;

void bt_finished (qk_tap_dance_state_t *state, void *user_data) {
  S1_state.state = cur_dance(state);
  switch (S1_state.state) {
    case 128: register_code(KC_F3); break;
    case 129: layer_on(_MACROS); break;
    case 130: layer_invert(_MACROS); break;
    case 132: layer_on(5); break;
    case 131: layer_invert(_MACROS); break;
  }
}
