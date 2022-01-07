
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


 int KC_LEFT ;
 int KC_LGUI ;
 int KC_RIGHT ;
 int SEND_STRING (char*) ;
 int is_lgui_active ;
 int lgui_timer ;
 int register_code (int ) ;
 int tap_code (int ) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {

    case 130:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 144:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 140:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 139:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 138:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 137:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 136:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 135:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 134:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 133:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 143:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 142:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 141:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 132:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("");
      } else {

      }
      return 0;



    case 129:
      if (record->event.pressed) {
        if (!is_lgui_active) {
          is_lgui_active = 1;
          register_code(KC_LGUI);
        }
        lgui_timer = timer_read();
        tap_code(KC_LEFT);
      } else {

      }
      return 0;


    case 128:
      if (record->event.pressed) {
        if (!is_lgui_active) {
          is_lgui_active = 1;
          register_code(KC_LGUI);
        }
        lgui_timer = timer_read();
        tap_code(KC_RIGHT);
      } else {

      }
      return 0;
    default:
      return 1;
  }
}
