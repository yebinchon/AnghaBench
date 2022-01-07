
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
 int PLAY_NOTE_ARRAY (int ,int,int ) ;


 int SEND_STRING (char*) ;






 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int issi_init () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int print (char*) ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 135:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 148:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 145:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 136:
        if (record->event.pressed) {
            layer_on(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
        } else {
            layer_off(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
        }
        return 0;
        break;
    case 134:
        if (record->event.pressed) {
            layer_on(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
        } else {
            layer_off(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
        }
        return 0;
        break;
    case 151:

        if (record->event.pressed) {
            layer_on(_ADJUST);
        } else {
            layer_off(_ADJUST);
        }
        return 0;
        break;
    case 149:






        return 0;
        break;
    case 150:
        if (record->event.pressed) {
            print("Stepping backlight\n");

        }
        return 0;
        break;
    case 144:
      if (record->event.pressed) {
        SEND_STRING("&fliptable;");
      }
      return 0;
      break;
    case 147:
      if (record->event.pressed) {
        SEND_STRING(":-\\");
      }

      break;
    case 133:
      if (record->event.pressed) {
        SEND_STRING("&shit; ");
      }
      return 0;
      break;
    case 146:
      if (record->event.pressed) {
        SEND_STRING(":'-( ");
      }
      return 0;
      break;
    case 137:
      if (record->event.pressed) {
        SEND_STRING("&llap; ");
      }
      return 0;
      break;
    case 140:
      if (record->event.pressed) {
        SEND_STRING(":-D ");
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        SEND_STRING(":-P ");
      }
      return 0;
      break;
    case 138:
      if (record->event.pressed) {
        SEND_STRING(":-) ");
      }
      return 0;
      break;
    case 141:
      if (record->event.pressed) {
        SEND_STRING(":-( ");
      }
      return 0;
      break;
    case 139:
      if (record->event.pressed) {
        SEND_STRING("<3 ");
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        SEND_STRING("&shrug; ");
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        SEND_STRING("&thumbup; ");
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("&thumbdown; ");
      }
      return 0;
      break;
    case 143:
      if (record->event.pressed) {
        SEND_STRING("&fingerleft; ");
      }
      return 0;
      break;
    case 142:
      if (record->event.pressed) {
        SEND_STRING("&fingerright; ");
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        SEND_STRING(";-) ");
      }
      return 0;
      break;
    case 152:
      if (record->event.pressed) {
        SEND_STRING("&above; ");
      }
      return 0;
      break;

  }
  return 1;
}
