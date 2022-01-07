
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeconfig_disable () ;
 int eeprom_set_valid (int) ;

void eeprom_reset(void)
{
 eeprom_set_valid(0);
 eeconfig_disable();
}
