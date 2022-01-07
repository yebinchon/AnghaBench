
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;




 int GK50 ;
 int KC_PSLS ;
 TYPE_1__ LYR50tap_state ;

 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;

void LYR50_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (LYR50tap_state.state) {
    case 128: unregister_code(KC_PSLS); break;
    case 129: set_single_persistent_default_layer(GK50); break;
    case 130: unregister_code(KC_PSLS);
  }
  LYR50tap_state.state = 0;
}
