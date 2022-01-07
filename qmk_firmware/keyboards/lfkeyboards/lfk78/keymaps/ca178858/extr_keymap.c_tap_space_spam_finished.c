
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pressed; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int KC_LGUI ;
 int KC_SPC ;
 int MOD_BIT (int ) ;
 int get_mods () ;
 int register_code (int ) ;
 int spam_space ;
 int unregister_code (int ) ;

void tap_space_spam_finished(qk_tap_dance_state_t *state, void *user_data) {
    if(get_mods() & (MOD_BIT(KC_LGUI))){
      return;
    }
    if(state->pressed){
        spam_space = 1;
    }
    register_code(KC_SPC);
    unregister_code(KC_SPC);
}
