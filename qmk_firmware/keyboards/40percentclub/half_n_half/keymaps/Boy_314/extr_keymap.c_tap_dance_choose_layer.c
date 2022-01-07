
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int _LOWER ;
 int _RAISE ;
 int layer_on (int ) ;

void tap_dance_choose_layer (qk_tap_dance_state_t *state, void *user_data) {
 switch (state->count) {
  case 1:
   layer_on(_LOWER);
   break;
  case 2:
   layer_on(_RAISE);
   break;
 }
}
