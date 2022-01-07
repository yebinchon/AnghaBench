
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_mode; } ;


 int EECONFIG_UNICODEMODE ;
 int eeprom_update_byte (int ,int ) ;
 TYPE_1__ unicode_config ;

void persist_unicode_input_mode(void) { eeprom_update_byte(EECONFIG_UNICODEMODE, unicode_config.input_mode); }
