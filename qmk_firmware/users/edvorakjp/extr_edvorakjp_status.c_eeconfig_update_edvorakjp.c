
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EECONFIG_EDVORAK ;
 int eeprom_update_byte (int ,int ) ;

void eeconfig_update_edvorakjp(uint8_t val) {
  eeprom_update_byte(EECONFIG_EDVORAK, val);
}
