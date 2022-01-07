
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matrix_master_OLED_init () ;
 int transport_master_init () ;

__attribute__((used)) static void keyboard_master_setup(void) {





    transport_master_init();
}
