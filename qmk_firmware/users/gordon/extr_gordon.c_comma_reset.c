
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
 int layer_off (int) ;
 int unregister_code (int ) ;

void comma_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (comma_state.state) {
    case 130: unregister_code(KC_COMMA); break;
    case 131: layer_off(1); break;
    case 132: ;break;
    case 133: layer_off(2); break;
    case 128: unregister_code(KC_CALCULATOR); break;
    case 129: layer_off(3);
  }
  comma_state.state = 0;
}
