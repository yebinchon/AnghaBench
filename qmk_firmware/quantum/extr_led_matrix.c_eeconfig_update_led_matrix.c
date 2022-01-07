
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_LED_MATRIX ;
 int eeprom_update_dword (int ,int ) ;

void eeconfig_update_led_matrix(uint32_t config_value) { eeprom_update_dword(EECONFIG_LED_MATRIX, config_value); }
