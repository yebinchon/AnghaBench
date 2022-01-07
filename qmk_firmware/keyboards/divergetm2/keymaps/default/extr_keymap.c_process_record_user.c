
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int PLAY_SONG (int ) ;

 unsigned long _COLEMAK ;
 unsigned long _DVORAK ;
 unsigned long _QWERTY ;
 scalar_t__ rl_start_time ;
 int set_single_persistent_default_layer (unsigned long) ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if(rl_start_time && record->event.pressed) rl_start_time = 0;
  switch (keycode) {
    case 128:
      if (record->event.pressed) {



        set_single_persistent_default_layer(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {



        set_single_persistent_default_layer(1UL<<_COLEMAK);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {



        set_single_persistent_default_layer(1UL<<_DVORAK);
      }
      return 0;
      break;
  }
  return 1;
}
