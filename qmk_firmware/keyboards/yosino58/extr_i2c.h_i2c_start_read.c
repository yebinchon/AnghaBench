
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char I2C_READ ;
 unsigned char i2c_master_start (unsigned char) ;

__attribute__((used)) static inline unsigned char i2c_start_read(unsigned char addr) {
  return i2c_master_start((addr << 1) | I2C_READ);
}
