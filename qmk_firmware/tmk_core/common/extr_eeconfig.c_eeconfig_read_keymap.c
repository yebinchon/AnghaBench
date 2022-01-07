
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EECONFIG_KEYMAP_LOWER_BYTE ;
 int EECONFIG_KEYMAP_UPPER_BYTE ;
 int eeprom_read_byte (int ) ;

uint16_t eeconfig_read_keymap(void) { return (eeprom_read_byte(EECONFIG_KEYMAP_LOWER_BYTE) | (eeprom_read_byte(EECONFIG_KEYMAP_UPPER_BYTE) << 8)); }
