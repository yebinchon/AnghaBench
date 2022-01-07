
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int macro_t ;
typedef int keyrecord_t ;


 int D (int ) ;
 int END ;
 int KC_RSFT ;
 int LALT ;
 int LSFT ;
 int const* MACRO (int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int MOD_BIT (int ) ;
 int T (int ) ;
 int U (int ) ;
 int get_mods () ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch(id) {
      case 0:



        if (!(get_mods() & MOD_BIT(KC_RSFT)))
          return MACRO(D(LALT), T(LSFT), U(LALT), END);
        else
          return MACRO_NONE;
  }
  return MACRO_NONE;
}
