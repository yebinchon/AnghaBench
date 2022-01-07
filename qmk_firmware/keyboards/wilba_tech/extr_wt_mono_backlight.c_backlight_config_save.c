
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backlight_config ;


 scalar_t__ MONO_BACKLIGHT_CONFIG_EEPROM_ADDR ;
 int eeprom_update_block (int *,void*,int) ;
 int g_config ;

void backlight_config_save(void)
{
    eeprom_update_block( &g_config, ((void*)MONO_BACKLIGHT_CONFIG_EEPROM_ADDR), sizeof(backlight_config) );
}
