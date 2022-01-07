
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEVICE_STATE_Configured ;
 int SLAVE_I2C_ADDRESS ;
 scalar_t__ USB_DeviceState ;
 int i2c_slave_init (int ) ;
 int sei () ;

void matrix_setup(void){

    if (USB_DeviceState != DEVICE_STATE_Configured){
        i2c_slave_init(SLAVE_I2C_ADDRESS);
        sei();
    }
}
