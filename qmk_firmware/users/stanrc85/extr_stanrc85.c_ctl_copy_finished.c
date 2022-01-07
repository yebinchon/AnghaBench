
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int KC_RCTL ;
 int MOD_BIT (int ) ;
 int SEND_STRING (int ) ;


 int SS_LCTRL (char*) ;
 int cur_dance (int *) ;
 int register_mods (int ) ;
 int td_state ;

void ctl_copy_finished (qk_tap_dance_state_t *state, void *user_data) {
  td_state = cur_dance(state);
  switch (td_state) {
    case 128:
      SEND_STRING(SS_LCTRL("c"));
      break;
    case 129:
      register_mods(MOD_BIT(KC_RCTL));
      break;
    case 130:
      SEND_STRING(SS_LCTRL("v"));
  }
}
