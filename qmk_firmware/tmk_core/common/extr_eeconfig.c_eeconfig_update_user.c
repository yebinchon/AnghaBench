
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_USER ;
 int eeprom_update_dword (int ,int ) ;

void eeconfig_update_user(uint32_t val) { eeprom_update_dword(EECONFIG_USER, val); }
