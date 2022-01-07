
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_jtag () ;
 int keyboard_pre_init_kb () ;
 int matrix_setup () ;

void keyboard_setup(void) {

    disable_jtag();

    matrix_setup();
    keyboard_pre_init_kb();
}
