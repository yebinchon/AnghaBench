
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_MAGIC ;
 int EECONFIG_MAGIC_NUMBER ;
 int eeprom_update_word (int ,int ) ;

void eeconfig_enable(void) { eeprom_update_word(EECONFIG_MAGIC, EECONFIG_MAGIC_NUMBER); }
