
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int KC_RCTL ;
 int MOD_BIT (int ) ;


 int td_state ;
 int unregister_mods (int ) ;

void ctl_copy_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (td_state) {
    case 128:
      break;
    case 129:
      unregister_mods(MOD_BIT(KC_RCTL));
      break;
    case 130:
      break;
  }
}
