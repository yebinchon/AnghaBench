
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int SEND_STRING (char*) ;
 int TAP_MACRO ;
 int TD (int ) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (keycode != TD(TAP_MACRO)) {





    if (!process_record_dynamic_macro(keycode, record)) {
      return 0;
    }

    if(record->event.pressed) {
      switch(keycode) {
        case 128:
          SEND_STRING("=>");
          return 0;
          break;
      }
    }
  }

  return 1;
}
