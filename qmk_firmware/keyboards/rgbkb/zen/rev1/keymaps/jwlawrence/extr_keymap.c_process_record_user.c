
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

 unsigned long _QWERTY ;
 int persistant_default_layer_set (unsigned long) ;
 int tone_qwerty ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      if (record->event.pressed) {



        persistant_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
  }
  return 1;
}
