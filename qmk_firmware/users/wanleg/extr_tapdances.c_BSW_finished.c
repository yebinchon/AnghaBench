
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
 int PLAY_SONG (int ) ;


 int cur_dance (int *) ;
 int lyrdown_song ;
 int register_code (int ) ;
 int reset_keyboard () ;
 int set_single_persistent_default_layer (int ) ;
 int stop_all_notes () ;

void BSW_finished (qk_tap_dance_state_t *state, void *user_data) {
  BSWtap_state.state = cur_dance(state);
  switch (BSWtap_state.state) {
    case 128: register_code(KC_ENTER); break;
    case 129:
      set_single_persistent_default_layer(0);




      break;
    case 130:
   register_code(KC_LCTRL);
      register_code(KC_C);
   break;
 case 131:
   reset_keyboard();
   break;
  }
}
