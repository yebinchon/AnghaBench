
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


 int KC_DEL ;
 int KC_ESC ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_RCTL ;
 int KC_RSFT ;
 int const* MACRO_NONE ;
 int clear_keyboard () ;
 int register_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

  switch(id) {
    case 0:
    if (record->event.pressed) {
      register_code(KC_RSFT);
      register_code(KC_RCTL);
      register_code(KC_ESC);
    }
    else{
      clear_keyboard();
    }
    break;
    case 1:
    if (record->event.pressed) {
      register_code(KC_LCTL);
      register_code(KC_LALT);
      register_code(KC_DEL);
    }
    else{
      clear_keyboard();
    }
    break;
  }
  return MACRO_NONE;
}
