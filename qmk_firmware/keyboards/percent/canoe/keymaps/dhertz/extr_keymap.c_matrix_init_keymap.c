
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_enable_noeeprom () ;
 int rgblight_sethsv_teal () ;

void matrix_init_keymap(void) {
    rgblight_enable_noeeprom();
    rgblight_sethsv_teal();
}
