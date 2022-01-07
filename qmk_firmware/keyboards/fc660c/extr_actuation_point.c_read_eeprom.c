
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AD5258_ADDR ;
 int AD5258_INST_EEPROM ;
 int I2C_NACK ;
 int i2c_master_read (int ) ;
 int i2c_master_stop () ;
 int i2c_master_write (int ) ;
 int i2c_start_read (int ) ;
 int i2c_start_write (int ) ;

uint8_t read_eeprom(void) {
    i2c_start_write(AD5258_ADDR);
    i2c_master_write(AD5258_INST_EEPROM);
    i2c_start_read(AD5258_ADDR);
    uint8_t ret = i2c_master_read(I2C_NACK);
    i2c_master_stop();
    return ret;
}
