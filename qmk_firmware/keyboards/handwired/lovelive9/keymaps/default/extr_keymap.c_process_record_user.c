
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




 int IS_LAYER_ON (int ) ;

 int LED_default_set () ;
 int LED_layer_set (int) ;






 int SEND_CHIKA ;
 int SEND_DIA ;
 int SEND_KANAN ;
 int SEND_MARI ;
 int SEND_RIKO ;
 int SEND_RUBY ;
 int SEND_YOHANE ;
 int SEND_YOU ;
 int SEND_ZURA ;




 int _CHIKA ;
 int _DIA ;
 int _KANAN ;
 int _MARI ;
 int _RIKO ;
 int _RUBY ;
 int _RUBY_SUB1 ;
 int _RUBY_SUB2 ;
 int _RUBY_SUB3 ;
 int _SCHOOL_IDOL_FESTIVAL ;
 int _YOHANE ;
 int _YOU ;
 int _ZURA ;
 int check_tap_and_send_key (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int long_tap_timer ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  switch (keycode) {

    case 139:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_DIA);
        LED_layer_set(3);
      } else {
        check_tap_and_send_key(SEND_DIA);
        layer_off(_DIA);
        LED_default_set();
      }
      break;

    case 129:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_YOU);
        LED_layer_set(4);
      } else {
        check_tap_and_send_key(SEND_YOU);
        layer_off(_YOU);
        LED_default_set();
      }
      break;

    case 140:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_CHIKA);
        LED_layer_set(0);
      } else {
        check_tap_and_send_key(SEND_CHIKA);
        layer_off(_CHIKA);
        LED_default_set();
      }
      break;

    case 128:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_ZURA);
        LED_layer_set(6);
      } else {
        check_tap_and_send_key(SEND_ZURA);
        layer_off(_ZURA);
        LED_default_set();
      }
      break;

    case 134:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_RUBY);
        LED_layer_set(8);
      } else {
        check_tap_and_send_key(SEND_RUBY);
        layer_off(_RUBY);
        LED_default_set();
      }
      break;
    case 133:
      if (record->event.pressed) {
        layer_on(_RUBY_SUB1);
        if (IS_LAYER_ON(_RUBY_SUB1) && IS_LAYER_ON(_RUBY_SUB2)) {
          layer_on(_RUBY_SUB3);
        } else {
          layer_off(_RUBY_SUB3);
        }
      } else {
        layer_off(_RUBY_SUB1);
      }
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(_RUBY_SUB2);
        if (IS_LAYER_ON(_RUBY_SUB1) && IS_LAYER_ON(_RUBY_SUB2)) {
          layer_on(_RUBY_SUB3);
        } else {
          layer_off(_RUBY_SUB3);
        }
      } else {
        layer_off(_RUBY_SUB2);
      }
      break;

    case 130:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_YOHANE);
        LED_layer_set(5);
      } else {
        check_tap_and_send_key(SEND_YOHANE);
        layer_off(_YOHANE);
        LED_default_set();
      }
      break;

    case 135:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_RIKO);
        LED_layer_set(1);
      } else {
        check_tap_and_send_key(SEND_RIKO);
        layer_off(_RIKO);
        LED_default_set();
      }
      break;

    case 137:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_MARI);
        LED_layer_set(7);
      } else {
        check_tap_and_send_key(SEND_MARI);
        layer_off(_MARI);
        LED_default_set();
      }
      break;

    case 138:
      if (record->event.pressed) {
        long_tap_timer = 1;
        layer_on(_KANAN);
        LED_layer_set(2);
      } else {
        check_tap_and_send_key(SEND_KANAN);
        layer_off(_KANAN);
        LED_default_set();
      }
      break;

    case 131:
      if (record->event.pressed) {
        LED_default_set();
        layer_on(_SCHOOL_IDOL_FESTIVAL);
      }
      break;
    case 136:
      if (record->event.pressed) {
        layer_off(_SCHOOL_IDOL_FESTIVAL);
      }
      break;
  }

  return 1;
}
