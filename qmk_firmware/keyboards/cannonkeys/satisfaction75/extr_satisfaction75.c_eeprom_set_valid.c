
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEPROM_MAGIC ;
 scalar_t__ EEPROM_MAGIC_ADDR ;
 int EEPROM_VERSION ;
 scalar_t__ EEPROM_VERSION_ADDR ;
 int eeprom_update_byte (void*,int) ;
 int eeprom_update_word (void*,int) ;

void eeprom_set_valid(bool valid)
{
 eeprom_update_word(((void*)EEPROM_MAGIC_ADDR), valid ? EEPROM_MAGIC : 0xFFFF);
 eeprom_update_byte(((void*)EEPROM_VERSION_ADDR), valid ? EEPROM_VERSION : 0xFF);
}
