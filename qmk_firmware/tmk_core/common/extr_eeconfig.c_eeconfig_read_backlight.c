
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EECONFIG_BACKLIGHT ;
 int eeprom_read_byte (int ) ;

uint8_t eeconfig_read_backlight(void) { return eeprom_read_byte(EECONFIG_BACKLIGHT); }
