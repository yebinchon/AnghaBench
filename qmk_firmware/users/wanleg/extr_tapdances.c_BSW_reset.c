
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;


 TYPE_1__ BSWtap_state ;

 int KC_C ;
 int KC_ENTER ;
 int KC_LCTRL ;

 int unregister_code (int ) ;

void BSW_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (BSWtap_state.state) {
    case 128: unregister_code(KC_ENTER); break;
    case 129:
   unregister_code(KC_LCTRL);
   unregister_code(KC_C);
   break;
  }
  BSWtap_state.state = 0;
}
