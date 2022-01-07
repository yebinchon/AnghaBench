
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_BTN1 ;
 int KC_BTN2 ;
 int KC_BTN3 ;
 int KC_BTN4 ;
 int KC_BTN5 ;
 int register_code (int ) ;
 int reset_tap_dance (TYPE_1__*) ;

void tap_dance_mouse_btns (qk_tap_dance_state_t *state, void *user_data) {
  switch(state->count){
  case 1:
    register_code(KC_BTN1);
    break;
  case 2:
    register_code(KC_BTN2);
    break;
  case 3:
    register_code(KC_BTN3);
    break;
  case 4:
    register_code(KC_BTN4);
    break;
  case 5:
    register_code(KC_BTN5);
    break;
  default:
    break;
  }
  reset_tap_dance(state);
}
