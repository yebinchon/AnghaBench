
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

 unsigned long _COLEMAK ;
 unsigned long _GAME ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int tone_colemak ;
 int tone_game ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_COLEMAK);
      }
      break;
    case 129:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_GAME);
      }
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_RAISE);
      } else {
        layer_off(_RAISE);
      }
      break;
    default:
      return 1;
      break;
  }

  return 0;
}
