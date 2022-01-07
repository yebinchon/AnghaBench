
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * RGBLED_SPLIT ;
 scalar_t__ isLeftHand ;
 scalar_t__ is_keyboard_left () ;
 scalar_t__ is_keyboard_master () ;
 int keyboard_master_setup () ;
 int keyboard_slave_setup () ;
 int rgblight_set_clipping_range (int ,int ) ;

void keyboard_split_setup(void) {
    isLeftHand = is_keyboard_left();
    if (is_keyboard_master()) {
        keyboard_master_setup();
    } else {
        keyboard_slave_setup();
    }
}
