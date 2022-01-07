
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int steno_mode_t ;


 int EECONFIG_STENOMODE ;
 int eeprom_update_byte (int ,int ) ;
 int mode ;
 int steno_clear_state () ;

void steno_set_mode(steno_mode_t new_mode) {
    steno_clear_state();
    mode = new_mode;
    eeprom_update_byte(EECONFIG_STENOMODE, mode);
}
