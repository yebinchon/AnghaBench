
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEPROM_MAGIC ;
 int EEPROM_MAGIC_ADDR ;
 int eeprom_update_word (int ,int) ;

void eeprom_set_valid(bool valid)
{
 eeprom_update_word(EEPROM_MAGIC_ADDR, valid ? EEPROM_MAGIC : 0xFFFF);
}
