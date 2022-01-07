
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isLeftHand ;
 int keyboard_slave_loop () ;
 int split_keyboard_setup () ;

void matrix_setup(void) {
    split_keyboard_setup();

    if (!isLeftHand) {

        keyboard_slave_loop();
    }
}
