
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_C ;
 int KC_V ;
 int LCTL (int ) ;


 int tap_code16 (int ) ;

void process_combo_event(uint8_t combo_index, bool pressed) {
  switch(combo_index) {
    case 129:
      if (pressed) {
        tap_code16(LCTL(KC_C));
      }
      break;

    case 128:
      if (pressed) {
        tap_code16(LCTL(KC_V));
      }
      break;
  }
}
