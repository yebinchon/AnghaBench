
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;


 int KC_SPC ;
 int spam_space ;
 int unregister_code (int ) ;

void tap_space_spam_reset(qk_tap_dance_state_t *state, void *user_data) {
    spam_space = 0;
    unregister_code(KC_SPC);
}
