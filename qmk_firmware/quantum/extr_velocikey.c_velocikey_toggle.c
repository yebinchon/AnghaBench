
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_VELOCIKEY ;
 int eeprom_update_byte (int ,int) ;
 scalar_t__ velocikey_enabled () ;

void velocikey_toggle(void) {
    if (velocikey_enabled())
        eeprom_update_byte(EECONFIG_VELOCIKEY, 0);
    else
        eeprom_update_byte(EECONFIG_VELOCIKEY, 1);
}
