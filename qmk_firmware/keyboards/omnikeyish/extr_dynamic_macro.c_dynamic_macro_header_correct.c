
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DYNAMIC_MACRO_EEPROM_MAGIC ;
 int DYNAMIC_MACRO_EEPROM_MAGIC_ADDR ;
 scalar_t__ eeprom_read_word (int ) ;

bool dynamic_macro_header_correct(void) {
    return eeprom_read_word(DYNAMIC_MACRO_EEPROM_MAGIC_ADDR) == DYNAMIC_MACRO_EEPROM_MAGIC;
}
