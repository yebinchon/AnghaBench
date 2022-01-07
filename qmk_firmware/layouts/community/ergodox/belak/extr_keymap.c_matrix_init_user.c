
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_BELAK ;
 scalar_t__ EECONFIG_BELAK_MAGIC ;
 int EECONFIG_BELAK_SWAP_GUI_CTRL ;
 int SWPH ;
 scalar_t__ eeprom_read_byte (int ) ;
 scalar_t__ eeprom_read_word (int ) ;
 int eeprom_update_byte (int ,int ) ;
 int eeprom_update_word (int ,scalar_t__) ;
 int layer_on (int ) ;
 int swap_gui_ctrl ;

void matrix_init_user(void) {

    if (eeprom_read_word(EECONFIG_BELAK) != EECONFIG_BELAK_MAGIC) {
        eeprom_update_word(EECONFIG_BELAK, EECONFIG_BELAK_MAGIC);
        eeprom_update_byte(EECONFIG_BELAK_SWAP_GUI_CTRL, 0);
    }

    if (eeprom_read_byte(EECONFIG_BELAK_SWAP_GUI_CTRL)) {
        layer_on(SWPH);
        swap_gui_ctrl = 1;
    }
}
