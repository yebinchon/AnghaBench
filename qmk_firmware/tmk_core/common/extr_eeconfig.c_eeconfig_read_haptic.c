
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_HAPTIC ;
 int eeprom_read_dword (int ) ;

uint32_t eeconfig_read_haptic(void) { return eeprom_read_dword(EECONFIG_HAPTIC); }
