
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* raw; } ;


 scalar_t__ DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT ;
 scalar_t__ DYNAMIC_KEYMAP_DEFAULT_OLED ;
 scalar_t__ DYNAMIC_KEYMAP_ENABLED_ENCODER_MODES ;
 void* eeprom_read_byte (int *) ;
 void* enabled_encoder_modes ;
 TYPE_1__ kb_backlight_config ;
 void* oled_mode ;

void load_custom_config(){
  kb_backlight_config.raw = eeprom_read_byte((uint8_t*)DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT);




}
