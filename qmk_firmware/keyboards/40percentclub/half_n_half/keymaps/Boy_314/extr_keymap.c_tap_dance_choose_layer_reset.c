
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int _DVORAK ;
 int _LOWER ;
 int _QWERTY ;
 int _RAISE ;
 int biton32 (int ) ;
 int default_layer_state ;
 int layer_off (int ) ;
 int set_single_persistent_default_layer (int ) ;

void tap_dance_choose_layer_reset (qk_tap_dance_state_t *state, void *user_data) {
 switch (state->count) {
  case 1:
   layer_off(_LOWER);
   break;
  case 2:
   layer_off(_RAISE);
   break;
  case 3:
   if (biton32(default_layer_state) == _DVORAK) {
    set_single_persistent_default_layer(_QWERTY);
   }
   else if (biton32(default_layer_state) == _QWERTY) {
    set_single_persistent_default_layer(_DVORAK);
   }
   break;
 }
}
