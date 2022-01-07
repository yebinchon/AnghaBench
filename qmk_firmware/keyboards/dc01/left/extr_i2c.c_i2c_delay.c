
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ I2C_LOOP_TIMEOUT ;
 int TWCR ;
 int TWINT ;

__attribute__((used)) inline static
void i2c_delay(void) {
  uint16_t lim = 0;
  while(!(TWCR & (1<<TWINT)) && lim < I2C_LOOP_TIMEOUT)
    lim++;



}
