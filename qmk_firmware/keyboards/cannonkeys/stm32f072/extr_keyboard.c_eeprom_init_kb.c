
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dynamic_keymap_custom_reset () ;
 int dynamic_keymap_macro_reset () ;
 int dynamic_keymap_reset () ;
 scalar_t__ eeprom_is_valid () ;
 int eeprom_set_valid (int) ;
 int load_custom_config () ;
 int save_backlight_config_to_eeprom () ;

void eeprom_init_kb(void)
{


 if (eeprom_is_valid()) {
  load_custom_config();
 } else {
        save_backlight_config_to_eeprom();
  eeprom_set_valid(1);
 }
}
