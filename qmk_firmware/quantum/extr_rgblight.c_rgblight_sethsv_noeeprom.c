
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rgblight_sethsv_eeprom_helper (int ,int ,int ,int) ;

void rgblight_sethsv_noeeprom(uint8_t hue, uint8_t sat, uint8_t val) { rgblight_sethsv_eeprom_helper(hue, sat, val, 0); }
