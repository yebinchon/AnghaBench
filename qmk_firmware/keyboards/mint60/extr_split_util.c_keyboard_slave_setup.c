
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLAVE_I2C_ADDRESS ;
 int i2c_slave_init (int ) ;
 int serial_slave_init () ;

__attribute__((used)) static void keyboard_slave_setup(void) {




    serial_slave_init();

}
