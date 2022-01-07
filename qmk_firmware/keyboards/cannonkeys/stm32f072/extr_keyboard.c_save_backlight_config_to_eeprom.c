
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; } ;


 scalar_t__ EEPROM_CUSTOM_BACKLIGHT ;
 int eeprom_update_byte (int *,int ) ;
 TYPE_1__ kb_backlight_config ;

void save_backlight_config_to_eeprom(){
  eeprom_update_byte((uint8_t*)EEPROM_CUSTOM_BACKLIGHT, kb_backlight_config.raw);
}
