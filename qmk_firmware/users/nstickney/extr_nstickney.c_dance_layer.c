
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_APP ;
 int NUMP ;
 int SYMB ;
 int SYSH ;
 int layer_invert (int ) ;
 int tap_code (int ) ;

void dance_layer (qk_tap_dance_state_t *state, void *user_data) {
 switch (state -> count) {
  case 1: tap_code(KC_APP); break;
  case 2: layer_invert(NUMP); break;
  case 3: layer_invert(SYMB); break;
  case 4: layer_invert(SYSH); break;
  default: break;
 }
}
