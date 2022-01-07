
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int MDIA ;
 int RIMW ;
 int SYMB ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int reset_tap_dance (TYPE_1__*) ;

void cake_count (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 2) {
    layer_on (SYMB);
    layer_off (MDIA);
  }
  else {
    layer_off (SYMB);
    layer_off (MDIA);
  }
  if (state->count == 3) {
     layer_on (RIMW);
     layer_off (MDIA);
  }
  else {
    layer_off (RIMW);
 layer_off (MDIA);
    reset_tap_dance (state);
  }
}
