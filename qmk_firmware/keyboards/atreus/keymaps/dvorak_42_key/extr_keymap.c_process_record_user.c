
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
 int SEND_STRING (int ) ;
 int SS_LALT (char*) ;
 int SS_LCTRL (char*) ;
 int SS_LSFT (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if(record->event.pressed) {
    switch (keycode) {

  case 129:
            SEND_STRING(SS_LCTRL("["));
            return 1;
   break;
  case 128:
            SEND_STRING(SS_LCTRL("]"));
            return 1;
   break;
  case 130:
            SEND_STRING(SS_LALT("w"));
            return 1;
   break;
  case 132:
            SEND_STRING(SS_LSFT(SS_LCTRL("e")));
            return 1;
   break;
  case 133:
            SEND_STRING(SS_LCTRL("g"));
            return 1;
   break;
  case 131:
            SEND_STRING(SS_LCTRL("e"));
            return 1;
   break;
 }
  }

  return 1;
}
