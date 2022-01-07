
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
 int SS_UP (int ) ;
 int X_DOWN ;
 int X_KP_0 ;
 int X_KP_2 ;
 int X_KP_DOT ;
 int X_KP_ENTER ;
 int X_LEFT ;
 int X_RIGHT ;
 int X_UP ;
 int arrow_toggle ;
 int backlight_toggle () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if(record->event.pressed){
    switch(keycode) {
      case 129:
        arrow_toggle = !arrow_toggle;
        backlight_toggle();
        return 0; break;

      case 128:
        if(arrow_toggle == 1){
          SEND_STRING(SS_DOWN(X_UP));
        } else {
          SEND_STRING(SS_DOWN(X_KP_2));
        }
        return 0; break;

      case 132:
        if(arrow_toggle == 1){
          SEND_STRING(SS_DOWN(X_DOWN));
        } else {
          SEND_STRING(SS_DOWN(X_KP_DOT));
        }
        return 0; break;

      case 131:
        if(arrow_toggle == 1){
          SEND_STRING(SS_DOWN(X_LEFT));
        } else {
          SEND_STRING(SS_DOWN(X_KP_0));
        }
        return 0; break;

      case 130:
        if(arrow_toggle == 1){
          SEND_STRING(SS_DOWN(X_RIGHT));
        } else {
          SEND_STRING(SS_DOWN(X_KP_ENTER));
        }
        return 0; break;
    }
  }
  if(!record->event.pressed){
    switch(keycode) {
      case 128:
        if(arrow_toggle == 1){
          SEND_STRING(SS_UP(X_UP));
        } else {
          SEND_STRING(SS_UP(X_KP_2));
        }
        return 0; break;
      case 132:
        if(arrow_toggle == 1){
          SEND_STRING(SS_UP(X_DOWN));
        } else {
          SEND_STRING(SS_UP(X_KP_DOT));
        }
        return 0; break;
      case 131:
        if(arrow_toggle == 1){
          SEND_STRING(SS_UP(X_LEFT));
        } else {
          SEND_STRING(SS_UP(X_KP_0));
        }
        return 0; break;
      case 130:
        if(arrow_toggle == 1){
          SEND_STRING(SS_UP(X_RIGHT));
        } else {
          SEND_STRING(SS_UP(X_KP_ENTER));
        }
        return 0; break;
    }
  }
  return 1;
}
