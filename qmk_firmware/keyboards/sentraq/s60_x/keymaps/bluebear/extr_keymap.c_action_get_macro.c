
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


 int BSLS ;
 int DOT ;
 int END ;
 int const* MACRO (int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int SPACE ;
 int T (int ) ;
 int mc_shift_on ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {

  switch(id) {

  case 0:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(MINS), T(DOT), T(MINS), T(MINS), T(DOT), T(MINS), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(MINS), T(MINS), T(MINS), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 1:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(MINS), T(DOT), T(MINS), T(DOT), T(MINS), T(MINS), T(SPACE), END);
   }
   else {
  return MACRO(T(DOT), T(MINS), T(MINS), T(MINS), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 2:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(MINS), T(MINS), T(DOT), T(MINS), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(DOT), T(DOT), T(MINS), T(MINS), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 3:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(DOT), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 4:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(DOT), T(DOT), T(MINS), T(DOT), T(DOT), T(MINS), T(SPACE), END);
   }
   else {
  return MACRO(T(DOT), T(DOT), T(DOT), T(DOT), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 5:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(DOT), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 6:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(DOT), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 7:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(MINS), T(DOT), T(DOT), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(MINS), T(DOT), T(DOT), T(DOT), T(SPACE), END);
   }
 }
 break;

  case 8:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(MINS), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 9:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(MINS), T(DOT), T(MINS), T(MINS), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(MINS), T(MINS), T(MINS), T(DOT), T(SPACE), END);
   }
 }
 break;

  case 10:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 11:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 12:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 13:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 14:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(SPACE), END);
 }
 break;

  case 15:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 16:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 17:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 18:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 19:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 20:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 21:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 22:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 23:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 24:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 25:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 26:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 27:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(DOT), T(SPACE), END);
 }
 break;

  case 28:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 29:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(SPACE), END);
 }
 break;

  case 30:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 31:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(DOT), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 32:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 33:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(DOT), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 34:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
   }
   return MACRO(T(MINS), T(DOT), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 35:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(DOT), T(DOT), T(SPACE), END);
 }
 break;

  case 36:
 if (record->event.pressed) {
   return MACRO(T(DOT), T(MINS), T(DOT), T(MINS), T(DOT), T(MINS), T(SPACE), END);
 }
 break;

  case 37:
 if (record->event.pressed) {
   return MACRO(T(MINS), T(MINS), T(DOT), T(DOT), T(MINS), T(MINS), T(SPACE), END);
 }
 break;

  case 38:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(MINS), T(DOT), T(DOT), T(MINS), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(DOT), T(MINS), T(MINS), T(MINS), T(MINS), T(DOT), T(SPACE), END);
   }
 }
 break;

  case 39:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(DOT), T(MINS), T(MINS), T(DOT), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(DOT), T(DOT), T(MINS), T(DOT), T(SPACE), END);
   }
 }
 break;

  case 40:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(MINS), T(MINS), T(MINS), T(DOT), T(DOT), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(DOT), T(MINS), T(DOT), T(MINS), T(DOT), T(SPACE), END);
   }
 }
 break;

  case 41:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(MINS), T(DOT), T(MINS), T(DOT), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(DOT), T(DOT), T(DOT), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 42:
 if (record->event.pressed) {
   if (mc_shift_on == 1) {
  return MACRO(T(DOT), T(DOT), T(MINS), T(MINS), T(DOT), T(MINS), T(SPACE), END);
   }
   else {
  return MACRO(T(MINS), T(DOT), T(DOT), T(DOT), T(DOT), T(MINS), T(SPACE), END);
   }
 }
 break;

  case 43:
 if (record->event.pressed) {
   return MACRO(T(BSLS), T(SPACE), END);
 }
 break;
  }
  return MACRO_NONE;
}
