
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_HANDEDNESS ;
 int SPLIT_HAND_PIN ;
 int eeprom_read_byte (int ) ;
 int is_keyboard_master () ;
 int readPin (int ) ;
 int setPinInput (int ) ;
 int setPinInputHigh (int ) ;

bool is_keyboard_left(void) {
    return is_keyboard_master();
}
