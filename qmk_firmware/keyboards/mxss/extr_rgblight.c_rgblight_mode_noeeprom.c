
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rgblight_mode_eeprom_helper (int ,int) ;

void rgblight_mode_noeeprom(uint8_t mode) {
  rgblight_mode_eeprom_helper(mode, 0);
}
