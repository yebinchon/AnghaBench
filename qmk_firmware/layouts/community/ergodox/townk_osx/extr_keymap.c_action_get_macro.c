
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


 int A ;
 int C ;
 int D (int ) ;
 int END ;
 int ESC ;
 int LCTRL ;
 int LGUI ;
 int const* MACRO (int ,int ,...) ;
 int const* MACRO_NONE ;




 int P ;
 int T (int ) ;
 int U (int ) ;
 int V ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {

  switch(id) {
    case 129:
      if (record->event.pressed) {
        return MACRO(D(LCTRL), T(A), U(LCTRL), D(ESC), END);
      }
      return MACRO(U(ESC), END);
    case 128:
      if (record->event.pressed) {
        return MACRO(D(LCTRL), T(A), U(LCTRL), D(P), END);
      }
      return MACRO(U(P), END);
    case 131:
      if (record->event.pressed) {
        return MACRO(D(LGUI), D(C), END);
      }
      return MACRO(U(C), U(LGUI), END);
    case 130:
      if (record->event.pressed) {
        return MACRO(D(LGUI), D(V), END);
      }
      return MACRO(U(V), U(LGUI), END);
  }
  return MACRO_NONE;
}
