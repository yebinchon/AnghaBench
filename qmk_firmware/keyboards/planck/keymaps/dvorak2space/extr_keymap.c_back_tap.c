
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;


 int KC_BSPACE ;
 int tap_code (int ) ;

void back_tap(qk_tap_dance_state_t *state, void *user_data) { tap_code(KC_BSPACE); }
