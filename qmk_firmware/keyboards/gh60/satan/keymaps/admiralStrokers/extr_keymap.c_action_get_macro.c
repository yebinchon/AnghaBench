
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int D (int ) ;
 int END ;
 int LCTL ;
 int LSFT ;
 int const* MACRO (int ,int ,...) ;
 int const* MACRO_NONE ;
 int RALT ;
 int RCTL ;
 int RSFT ;
 int T (int) ;
 int U (int ) ;
 int checktime () ;
 int key_timer ;
 int timer_read () ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
    switch(id) {
        case 0:
     if (record->event.pressed) {
      key_timer = timer_read();
      return MACRO(D(LSFT), END );
     } else {
      return checktime() ? MACRO(U(LSFT),D(RALT),T(7),U(RALT),END): MACRO(U(LSFT),END);
     }; break;
     case 1:
     if (record->event.pressed) {
      key_timer = timer_read();
      return MACRO(D(RSFT), END );
     } else {
      return checktime() ? MACRO(U(RSFT),D(RALT),T(0),U(RALT),END): MACRO(U(RSFT),END);
     }; break;
        case 2:
      if (record->event.pressed) {
       key_timer = timer_read();
       return MACRO(D(LCTL), END );
      } else {return checktime() ? MACRO(U(LCTL),D(RALT),T(8),U(RALT),END):MACRO(U(LCTL),END);
      }; break;
        case 3:
      if (record->event.pressed) {
       key_timer = timer_read();
       return MACRO(D(RCTL), END );
      } else {
       return checktime() ? MACRO(U(RCTL),D(RALT),T(9),U(RALT),END):MACRO(U(RCTL),END);
      }; break;
       case 4:
      if (record->event.pressed) { } else { }; break;
        case 5:
      if (record->event.pressed) { } else { }; break;
        case 6:
      if (record->event.pressed) { } else { }; break;
    } return MACRO_NONE;
}
