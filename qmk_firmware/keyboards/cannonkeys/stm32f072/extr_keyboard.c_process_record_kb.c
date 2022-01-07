
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int level; int enable; int breathing; } ;


 int BACKLIGHT_LEVELS ;




 int MACRO00 ;
 int MACRO15 ;
 int backlight_set (int) ;
 int breathing_toggle () ;
 int dynamic_keymap_macro_send (int) ;
 TYPE_5__ kb_backlight_config ;
 int process_record_user (int,TYPE_2__*) ;
 int save_backlight_config_to_eeprom () ;

bool process_record_kb(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        kb_backlight_config.level = kb_backlight_config.level + 1;
        if(kb_backlight_config.level > BACKLIGHT_LEVELS){
          kb_backlight_config.level = BACKLIGHT_LEVELS;
        }
        backlight_set(kb_backlight_config.level);
        save_backlight_config_to_eeprom();
      }
      return 0;
    case 128:
      if (record->event.pressed) {
        kb_backlight_config.enable = !kb_backlight_config.enable;
        if(kb_backlight_config.enable){
          backlight_set(kb_backlight_config.level);
        } else {
          backlight_set(0);
        }
        save_backlight_config_to_eeprom();
      }
      return 0;

    case 130:
      if (record->event.pressed) {
        if(kb_backlight_config.level <= 1){
          kb_backlight_config.level = 0;
        } else {
          kb_backlight_config.level = kb_backlight_config.level - 1;
        }
        backlight_set(kb_backlight_config.level);
        save_backlight_config_to_eeprom();
      }
      return 0;
    case 131:
      if (record->event.pressed) {
        kb_backlight_config.breathing = !kb_backlight_config.breathing;
        breathing_toggle();
        save_backlight_config_to_eeprom();
      }
      return 0;
    default:
        break;
  }
  return process_record_user(keycode, record);;
}
