
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int BEPO ;
 int DVORAK ;
 int DVORAK_ON_BEPO ;
 int reset_tap_dance (TYPE_1__*) ;
 int switch_default_layer (int ) ;

void tap_dance_default_layer_switch (qk_tap_dance_state_t *state, void *user_data) {
  switch(state->count){
  case 1:
    switch_default_layer(DVORAK);
    break;
  case 2:
    switch_default_layer(DVORAK_ON_BEPO);
    break;
  case 3:
    switch_default_layer(BEPO);
    break;
  default:
    break;
  }
  reset_tap_dance(state);
}
