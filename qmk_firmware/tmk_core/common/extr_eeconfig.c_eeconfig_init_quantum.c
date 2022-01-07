
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_AUDIO ;
 int EECONFIG_BACKLIGHT ;
 int EECONFIG_DEBUG ;
 int EECONFIG_DEFAULT_LAYER ;
 int EECONFIG_HANDEDNESS ;
 int EECONFIG_HAPTIC ;
 int EECONFIG_KEYMAP_LOWER_BYTE ;
 int EECONFIG_KEYMAP_UPPER_BYTE ;
 int EECONFIG_MAGIC ;
 int EECONFIG_MAGIC_NUMBER ;
 int EECONFIG_MOUSEKEY_ACCEL ;
 int EECONFIG_RGBLIGHT ;
 int EECONFIG_RGB_MATRIX ;
 int EECONFIG_RGB_MATRIX_SPEED ;
 int EECONFIG_STENOMODE ;
 int EECONFIG_VELOCIKEY ;
 int EEPROM_Erase () ;
 scalar_t__ default_layer_state ;
 int eeconfig_init_kb () ;
 int eeprom_update_byte (int ,int) ;
 int eeprom_update_dword (int ,int ) ;
 int eeprom_update_word (int ,int ) ;

void eeconfig_init_quantum(void) {



    eeprom_update_word(EECONFIG_MAGIC, EECONFIG_MAGIC_NUMBER);
    eeprom_update_byte(EECONFIG_DEBUG, 0);
    eeprom_update_byte(EECONFIG_DEFAULT_LAYER, 0);
    default_layer_state = 0;
    eeprom_update_byte(EECONFIG_KEYMAP_LOWER_BYTE, 0);
    eeprom_update_byte(EECONFIG_KEYMAP_UPPER_BYTE, 0);
    eeprom_update_byte(EECONFIG_MOUSEKEY_ACCEL, 0);
    eeprom_update_byte(EECONFIG_BACKLIGHT, 0);
    eeprom_update_byte(EECONFIG_AUDIO, 0xFF);
    eeprom_update_dword(EECONFIG_RGBLIGHT, 0);
    eeprom_update_byte(EECONFIG_STENOMODE, 0);
    eeprom_update_dword(EECONFIG_HAPTIC, 0);
    eeprom_update_byte(EECONFIG_VELOCIKEY, 0);
    eeprom_update_dword(EECONFIG_RGB_MATRIX, 0);
    eeprom_update_byte(EECONFIG_RGB_MATRIX_SPEED, 0);
    eeconfig_init_kb();
}
