
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPLIT_HAND_PIN ;
 int eeconfig_read_handedness () ;
 int is_keyboard_master () ;
 int readPin (int ) ;
 int setPinInput (int ) ;

__attribute__((weak)) bool is_keyboard_left(void) {
    return is_keyboard_master();
}
