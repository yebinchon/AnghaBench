
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_1 ;
 int KC_2 ;
 int KC_3 ;
 int KC_4 ;
 scalar_t__ _DIABLO ;
 scalar_t__ biton32 (int ) ;
 int layer_state ;
 int tap (int ) ;

void send_diablo_keystroke(uint8_t diablo_key) {
  if (biton32(layer_state) == _DIABLO) {
    switch (diablo_key) {
      case 0:
        tap(KC_1); break;
      case 1:
        tap(KC_2); break;
      case 2:
        tap(KC_3); break;
      case 3:
        tap(KC_4); break;
    }
  }
}
