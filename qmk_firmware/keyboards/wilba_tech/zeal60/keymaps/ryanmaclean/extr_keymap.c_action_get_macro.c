
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


 int D (int ) ;
 int END ;
 int LCTL ;
 int LGUI ;
 int LSFT ;
 int const* MACRO (int ,int ,int ,int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int T (int) ;
 int U (int ) ;
 int W (int) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    case 0:
      if (record->event.pressed) {
        return MACRO( D(LSFT), D(LCTL), D(LGUI), T(4), U(LSFT), U(LCTL), U(LGUI), W(255), END );
      }
      break;
    case 1:
      if (record->event.pressed) {
        return MACRO( D(LSFT), D(LGUI), T(4), U(LSFT), U(LGUI), W(255), END );
      }
      break;
    case 2:
      if (record->event.pressed) {
        return MACRO( D(LSFT), D(LCTL), D(LGUI), T(3), U(LSFT), U(LCTL), U(LGUI), W(255), END );
      }
      break;
    case 3:
      if (record->event.pressed) {
        return MACRO( D(LSFT), D(LGUI), T(3), U(LSFT), U(LGUI), W(255), END );
      }
      break;
  }
  return MACRO_NONE;
}
