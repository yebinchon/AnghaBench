
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int KC_RSFT ;
 int PLAY_SONG (int ) ;
 int PORTE ;
 int _DEFAULT ;
 int backlight_step () ;
 int register_code (int ) ;
 int s1 ;
 int s2 ;
 int s3 ;
 int s4 ;
 int s5 ;
 int s6 ;
 int s7 ;
 int s8 ;
 int s9 ;
 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 137:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DEFAULT);
      }
      return 0;
      break;
    case 138:
      if (record->event.pressed) {
        register_code(KC_RSFT);






      } else {
        unregister_code(KC_RSFT);



      }
      return 0;
      break;
    case 136:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {



      }
      return 0;
      break;
  }
  return 1;
}
