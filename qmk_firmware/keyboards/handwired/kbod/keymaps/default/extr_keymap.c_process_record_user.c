
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 int ALT ;

 int KC_4 ;
 int KC_ESC ;
 int KC_F4 ;
 int KC_GRAVE ;
 int MODS_PRESSED (int ) ;
 int SET_WHETHER (int ,int ,int ) ;

 int SHIFT ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      SET_WHETHER(MODS_PRESSED(SHIFT), KC_ESC, KC_GRAVE);

      return 0;

    case 129:
      SET_WHETHER(MODS_PRESSED(ALT), KC_4, KC_F4);

      return 0;

    default:
      return 1;
  }
}
