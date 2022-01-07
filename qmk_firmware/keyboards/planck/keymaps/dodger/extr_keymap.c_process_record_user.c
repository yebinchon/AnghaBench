
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
 int PLAY_SONG (int ) ;


 int SEND_STRING (char*) ;
 int _ADJUST ;
 int _COLEMAK ;
 int _GAME ;
 int _LOWER ;
 int _MUSIC ;
 int _RAISE ;
 int backlight_set (int ) ;
 int cabbage ;
 int disney ;
 int doom ;
 int isGame ;
 int isMusic ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int mario ;
 int marioe ;
 int numberone ;
 int oldspice ;
 int overwatch ;
 int setLayer (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 142:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);



      }
      return 0;
      break;
 case 138:
      if (record->event.pressed) {
    if (isGame) {
              if (isMusic)
                  setLayer(_MUSIC);
              else
                  setLayer(_COLEMAK);
              isGame = 0;
          } else {
              setLayer(_GAME);
              isGame = 1;
          }
      }
      return 0;
      break;
    case 133:
        if (record->event.pressed) {
            if (isMusic) {
                if (isGame)
                    setLayer(_GAME);
                else
                    setLayer(_COLEMAK);
                isMusic = 0;
            } else {
                setLayer(_MUSIC);
                isMusic = 1;
            }
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
    case 129:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 137:
     if (record->event.pressed) {
      SEND_STRING("()");
     }
     return 0; break;
    case 141:
     if (record->event.pressed) {
      SEND_STRING("// ---------------------------------------------------------------");
     }
     return 0; break;
    case 128:
     if (record->event.pressed) {
      SEND_STRING("// ***************************************************************");
     }
     return 0; break;
    case 135:
        if(record->event.pressed) {



        }
        return 0; break;
      case 134:
          if(record->event.pressed) {



          }
          return 0; break;
      case 130:
          if(record->event.pressed) {



          }
          return 0; break;
      case 139:
          if(record->event.pressed) {



          }
          return 0; break;
      case 140:
          if(record->event.pressed) {



          }
          return 0; break;
      case 132:
          if(record->event.pressed) {



          }
          return 0; break;
      case 143:
          if(record->event.pressed) {



          }
          return 0; break;
      case 131:
          if(record->event.pressed) {



          }
          return 0; break;
  }
  return 1;
}
