
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int pressed; } ;
struct TYPE_12__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int BASE_1 ;
 int BASE_12 ;
 int BASE_2 ;
 int KC_4 ;
 int KC_5 ;
 int KC_6 ;
 int KC_9 ;
 int KC_BSLS ;
 int KC_DEL ;
 int KC_G ;
 int KC_K ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LEFT ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_TAB ;
 int KC_W ;
 int LEFT ;



 int NOSHIFT ;






 int RIGHT ;
 int SHIFT ;
 int _ADJUST ;
 int _FNCKEY ;
 int _LSHIFT ;
 int _MOUSE ;
 int _NUMBER ;
 int _RSHIFT ;
 int _SYMBOL ;
 int base_layer () ;
 int base_n ;
 int clear_tt () ;
 int lt_shift (TYPE_2__*,int ,int ) ;
 int mt_shift (TYPE_2__*,int ,int ,int ) ;
 int steno (TYPE_2__*) ;
 int steno_exit (TYPE_2__*) ;
 int tap_layer (TYPE_2__*,int ) ;
 int tap_mods (TYPE_2__*,int ) ;
 int thumb_layer (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int tt_keycode ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
  switch (keycode) {
    case 171:
      if (record->event.pressed) {
        base_n = base_n | BASE_1;
        if (base_n == BASE_12) {
          base_layer();
        }
      }
      else {
        base_n = base_n & ~BASE_1;
      }
      return 0;
    case 170:
      if (record->event.pressed) {
        base_n = base_n | BASE_2;
        if (base_n == BASE_12) {
          base_layer();
        }
      }
      else {
        base_n = base_n & ~BASE_2;
      }
      return 0;
    case 172:
      tap_mods(record, KC_LALT);
      break;
    case 163:
      tap_mods(record, KC_LGUI);
      break;
    case 162:
      tap_mods(record, KC_LCTL);
      break;
    case 150:






      tap_layer(record, _NUMBER);
      break;
    case 149:
    case 132:
      tap_layer(record, _SYMBOL);

      thumb_layer(record, RIGHT, 0, 0, _SYMBOL, _LSHIFT);
      break;
    case 148:
      tap_mods(record, KC_LALT);
      break;
    case 147:
      tap_mods(record, KC_LCTL);
      break;
    case 146:
      tap_mods(record, KC_LGUI);
      break;
    case 139:

      mt_shift(record, KC_LGUI, 0, KC_6);
      break;
    case 138:

      mt_shift(record, KC_LSFT, 0, KC_4);
      break;
    case 137:

      mt_shift(record, KC_LALT, KC_LSFT, KC_G);
      break;
    case 136:

      mt_shift(record, KC_LGUI, KC_LSFT, KC_K);
      break;
    case 133:

      mt_shift(record, KC_LGUI, KC_LSFT, KC_W);
      break;
    case 135:

      mt_shift(record, KC_LCTL, 0, KC_9);
      break;
    case 134:

      mt_shift(record, KC_LALT, 0, KC_5);
      break;
    case 151:
      tap_layer(record, _MOUSE);

      thumb_layer(record, LEFT, 0, 0, _MOUSE, _SYMBOL);
      break;
    case 142:
      tap_layer(record, _MOUSE);

      thumb_layer(record, RIGHT, SHIFT, KC_LEFT, _MOUSE, _LSHIFT);
      break;
    case 131:
      tap_layer(record, _MOUSE);

      thumb_layer(record, RIGHT, NOSHIFT, KC_DEL, _MOUSE, _LSHIFT);
      break;
    case 141:

      lt_shift(record, KC_BSLS, _ADJUST);
      break;
    case 140:

      lt_shift(record, KC_TAB, _FNCKEY);
      break;
    case 130:
      tap_layer(record, _RSHIFT);

      break;
    case 129:
      tap_layer(record, _LSHIFT);

      thumb_layer(record, LEFT, 0, 0, _LSHIFT, _SYMBOL);
      break;
    case 143:
      if (record->event.pressed) {
        base_layer();
      }
      return 0;
    case 144:
      steno(record);
      return 0;
    case 145:
      steno_exit(record);
      return 0;
  }
  return 1;
}
