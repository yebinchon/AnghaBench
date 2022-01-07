
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AD5258_ADDR ;
 int AD5258_INST_RDAC ;
 int i2c_master_stop () ;
 int i2c_master_write (int) ;
 int i2c_start_write (int ) ;

void write_rdac(uint8_t rdac) {

    i2c_start_write(AD5258_ADDR);
    i2c_master_write(AD5258_INST_RDAC);
    i2c_master_write(rdac & 0x3F);
    i2c_master_stop();
}
