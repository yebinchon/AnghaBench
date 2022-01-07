
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int KC_AT ;
 int ONESHOT_START ;


 int _FUNCTION ;
 int _UPPER ;
 int cur_dance (int *) ;
 int register_code16 (int ) ;
 int reset_keyboard () ;
 int set_oneshot_layer (int ,int ) ;
 TYPE_1__ xtap_state ;

void x_finished (qk_tap_dance_state_t *state, void *user_data) {
 xtap_state.state = cur_dance(state);
 switch (xtap_state.state) {
  case 128: register_code16(KC_AT); break;
  case 129: set_oneshot_layer(_UPPER, ONESHOT_START); break;
  case 130: set_oneshot_layer(_FUNCTION, ONESHOT_START); break;
  case 131: reset_keyboard(); break;
 }
}
