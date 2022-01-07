
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;



 int KC_NUBS ;
 int KC_SLSH ;

 int clear_mods () ;
 int clear_weak_mods () ;
 int cur_dance (int *) ;
 int tap_code (int ) ;

void slash_finished(qk_tap_dance_state_t *state, void *user_data) {
  int td_state = cur_dance(state);
  switch(td_state) {
    case 128:
      clear_mods();
      clear_weak_mods();
      tap_code(KC_SLSH);
      break;
    case 129:
      tap_code(KC_NUBS);
  }
}
