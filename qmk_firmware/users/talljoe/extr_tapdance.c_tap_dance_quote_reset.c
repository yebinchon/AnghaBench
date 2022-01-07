
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int quote; } ;




 int KC_QUOTE ;
 int SEND_STRING (char*) ;



 int _NAV ;
 int layer_invert (int ) ;
 int layer_off (int ) ;
 TYPE_1__ tap_state ;
 int unregister_code (int ) ;

void tap_dance_quote_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (tap_state.quote) {
    case 129: case 132: unregister_code(KC_QUOTE); break;
    case 131: SEND_STRING("\""); break;
    case 128: layer_invert(_NAV); break;
    case 130: layer_off(_NAV); break;
  }
  tap_state.quote = 0;
}
