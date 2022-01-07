
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int macro_t ;
typedef int keyrecord_t ;


 int END ;
 int KC_T ;
 int const* MACRODOWN (int ,int ) ;
 int const* MACRO_NONE ;
 int TYPE (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {

  switch(id) {
    case 0:
      return MACRODOWN(TYPE(KC_T), END);
      break;
  }
  return MACRO_NONE;
}
