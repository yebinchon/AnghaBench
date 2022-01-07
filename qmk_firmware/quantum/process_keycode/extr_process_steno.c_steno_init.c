
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_STENOMODE ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeprom_read_byte (int ) ;
 int mode ;

void steno_init() {
    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }
    mode = eeprom_read_byte(EECONFIG_STENOMODE);
}
