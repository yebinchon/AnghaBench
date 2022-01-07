
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
 int layer_off (int) ;
 int unregister_code (int ) ;

void bt_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (S1_state.state) {
    case 128: unregister_code(KC_F3); break;
    case 129: layer_off(_MACROS); break;
    case 130: break;
    case 132: layer_off(5); break;
    case 131: break;
  }
  S1_state.state = 0;
}
