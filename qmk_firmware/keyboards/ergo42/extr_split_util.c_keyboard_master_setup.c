
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_master_init () ;
 int matrix_master_OLED_init () ;
 int serial_master_init () ;

__attribute__((used)) static void keyboard_master_setup(void) {






    serial_master_init();

}
