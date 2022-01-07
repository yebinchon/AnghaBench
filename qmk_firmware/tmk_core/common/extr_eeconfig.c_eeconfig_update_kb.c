
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_KEYBOARD ;
 int eeprom_update_dword (int ,int ) ;

void eeconfig_update_kb(uint32_t val) { eeprom_update_dword(EECONFIG_KEYBOARD, val); }
