
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_HANDEDNESS ;
 int eeprom_update_byte (int ,int) ;

void eeconfig_update_handedness(bool val) { eeprom_update_byte(EECONFIG_HANDEDNESS, !!val); }
