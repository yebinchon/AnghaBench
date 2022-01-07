
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EECONFIG_KEYMAP_LOWER_BYTE ;
 int EECONFIG_KEYMAP_UPPER_BYTE ;
 int eeprom_update_byte (int ,int) ;

void eeconfig_update_keymap(uint16_t val) {
    eeprom_update_byte(EECONFIG_KEYMAP_LOWER_BYTE, val & 0xFF);
    eeprom_update_byte(EECONFIG_KEYMAP_UPPER_BYTE, (val >> 8) & 0xFF);
}
