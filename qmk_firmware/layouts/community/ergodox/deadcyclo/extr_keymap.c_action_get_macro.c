
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int D (int ) ;
 int END ;
 int I ;
 int LCTL ;
 int const* MACRO (int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int R ;

 int T (int ) ;
 int U (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
  if (record->event.pressed) {
    switch(id) {
      case 128:
 return MACRO( D(LCTL), T(I), U(LCTL), T(R), END );
      break;
    }
  }
  return MACRO_NONE;
}
