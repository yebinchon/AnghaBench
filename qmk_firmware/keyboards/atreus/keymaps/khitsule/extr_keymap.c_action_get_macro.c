
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int macro_t ;
typedef int keyrecord_t ;


 int D (int ) ;
 int END ;
 int LALT ;
 int LGUI ;
 int LSFT ;
 int MACRO (int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int T (int) ;
 int U (int ) ;
 int const* tap_mod_macro (int *,int ,int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch(id) {
    case 1:
      return tap_mod_macro(record, LGUI, MACRO( D(LSFT), T(9), U(LSFT), END));
      break;
    case 2:
      return tap_mod_macro(record, LALT, MACRO( D(LSFT), T(0), U(LSFT), END));
      break;

  }
  return MACRO_NONE;
}
