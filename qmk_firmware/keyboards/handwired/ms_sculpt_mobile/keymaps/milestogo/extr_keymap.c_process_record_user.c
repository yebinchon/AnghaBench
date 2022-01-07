
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


 int _CDH ;
 int _SYM ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int tone_colemak ;
 int tone_qwerty ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {



        layer_off(_CDH);
      }
      return 0;
      break;

    case 130:
      if (record->event.pressed) {



        layer_on(_CDH);
      }
      return 0;
      break;

    case 128:
      if (record->event.pressed) {
        layer_on(_SYM);
      } else {
  layer_off(_SYM);
      }
     return 0;
     break;

   }
 return 1;

}
