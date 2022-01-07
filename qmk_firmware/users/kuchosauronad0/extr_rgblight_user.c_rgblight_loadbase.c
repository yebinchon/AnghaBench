
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_hue ;
 int base_mod ;
 int base_sat ;
 int base_val ;
 int rgblight_mode (int ) ;
 int rgblight_sethsv_eeprom_helper (int ,int ,int ,int) ;

void rgblight_loadbase(void) {
  rgblight_mode( base_mod );
  rgblight_sethsv_eeprom_helper(base_hue, base_sat, base_val, 1);
}
