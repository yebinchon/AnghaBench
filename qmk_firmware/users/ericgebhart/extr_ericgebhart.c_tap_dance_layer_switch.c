
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int LAYERS ;
 int MDIA ;
 int SYMB ;
 int SYMB_ON_BEPO ;
 int layer_invert (int ) ;
 int on_qwerty () ;
 int reset_tap_dance (TYPE_1__*) ;

void tap_dance_layer_switch (qk_tap_dance_state_t *state, void *user_data) {
  switch(state->count){
  case 1:
    if(on_qwerty())
      layer_invert(SYMB);
    else
         layer_invert(SYMB_ON_BEPO);
    break;
  case 2:
    layer_invert(MDIA);
    break;
  case 3:
    layer_invert(LAYERS);
  default:
    break;
  }
  reset_tap_dance(state);
}
