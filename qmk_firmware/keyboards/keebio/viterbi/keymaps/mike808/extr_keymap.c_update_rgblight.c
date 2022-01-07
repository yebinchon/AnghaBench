
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint16_t ;


 unsigned long _DVORAK ;
 unsigned long _QWERTY ;
 int rgblight_sethsv_goldenrod () ;
 int rgblight_sethsv_green () ;

void update_rgblight(uint16_t layer) {
  if (layer & (1UL << _DVORAK)) {
    rgblight_sethsv_green();
  } else if (layer & (1UL << _QWERTY)) {
    rgblight_sethsv_goldenrod();
  }
}
