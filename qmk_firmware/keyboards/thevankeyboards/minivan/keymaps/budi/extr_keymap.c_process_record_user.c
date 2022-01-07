
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
 int SS_DOWN (int ) ;
 int SS_TAP (int ) ;
 int SS_UP (int ) ;

 int X_ENTER ;
 int X_LGUI ;
 int X_LSHIFT ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    switch (keycode) {
      case 128:
        SEND_STRING(SS_DOWN(X_LGUI));
        SEND_STRING(SS_DOWN(X_LSHIFT));
        SEND_STRING(SS_TAP(X_ENTER));
        SEND_STRING(SS_UP(X_LSHIFT));
        SEND_STRING(SS_UP(X_LGUI));
        return 0;
    }
  }
  return 1;
}
