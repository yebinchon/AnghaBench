
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


 int KC_AMPR ;
 int KC_ASTR ;
 int KC_ENT ;
 int KC_EQL ;
 int KC_EXLM ;
 int KC_LABK ;
 int KC_LEFT ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_MINS ;
 int KC_PIPE ;
 int KC_PLUS ;
 int KC_RABK ;
 int KC_RGHT ;
 int KC_SLSH ;
 int KC_UP ;
 int press_key (int ) ;
 int press_three_keys (int ,int ,int ) ;
 int press_two_keys (int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 137:
      if (record->event.pressed) {
        press_two_keys(KC_LGUI, KC_RGHT);
        press_key(KC_ENT);
      }

      return 0;

    case 138:
      if (record->event.pressed) {
        press_two_keys(KC_LGUI, KC_LEFT);
        press_key(KC_ENT);
        press_key(KC_UP);
      }

      return 0;

    case 128:
      if (record->event.pressed) {
        press_three_keys(KC_LGUI, KC_LSFT, KC_ENT);
      }

      return 0;

    case 135:
      if (record->event.pressed) {
        press_key(KC_SLSH);
        press_key(KC_EQL);
      }

      return 0;

    case 132:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_ASTR);
        press_key(KC_EQL);
      }

      return 0;

    case 129:
      if (record->event.pressed) {
        press_key(KC_MINS);
        press_key(KC_EQL);
      }

      return 0;

    case 130:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_PLUS);
        press_key(KC_EQL);
      }

      return 0;

    case 131:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_EXLM);
        press_key(KC_EQL);
      }

      return 0;

    case 133:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_LABK);
        press_two_keys(KC_LSFT, KC_RABK);
      }

      return 0;

    case 134:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_PIPE);
        press_two_keys(KC_LSFT, KC_PIPE);
      }

      return 0;

    case 136:
      if (record->event.pressed) {
        press_two_keys(KC_LSFT, KC_AMPR);
        press_two_keys(KC_LSFT, KC_AMPR);
      }

      return 0;
  }

  return 1;
}
