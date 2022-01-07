
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int state; } ;




 int GK50 ;
 int KC_PSLS ;
 TYPE_2__ LYR50tap_state ;
 TYPE_1__ LYR75tap_state ;

 int cur_dance (int *) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;

void LYR50_finished (qk_tap_dance_state_t *state, void *user_data) {
  LYR50tap_state.state = cur_dance(state);
  switch (LYR75tap_state.state) {
 case 128: register_code(KC_PSLS); break;
 case 129: set_single_persistent_default_layer(GK50); break;
    case 130: register_code(KC_PSLS); unregister_code(KC_PSLS); register_code(KC_PSLS);
  }
}
