
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int semicolon; } ;




 int KC_SCLN ;
 int SEND_STRING (char*) ;




 int _NUM ;
 int get_mods () ;
 int layer_invert (int ) ;
 int layer_off (int ) ;
 TYPE_1__ tap_state ;
 int unregister_code (int ) ;

void tap_dance_semicolon_reset(qk_tap_dance_state_t *state, void *user_data) {
  switch (tap_state.semicolon) {
    case 130: case 133: unregister_code(KC_SCLN); break;
    case 132: {
      if (get_mods()) {
        SEND_STRING(";;");
      }
      else {
        SEND_STRING(";\n");
      }
      break;
    }
    case 128: {
      SEND_STRING(";\n\n");
    }
    case 129: layer_invert(_NUM); break;
    case 131: layer_off(_NUM); break;
  }
  tap_state.semicolon = 0;
}
