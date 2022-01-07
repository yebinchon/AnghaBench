
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_HAPTIC ;
 int eeprom_update_dword (int ,int ) ;

void eeconfig_update_haptic(uint32_t val) { eeprom_update_dword(EECONFIG_HAPTIC, val); }
