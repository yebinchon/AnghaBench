
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWCR ;
 int TWEA ;
 int TWEN ;

void i2c_slave_stop(void) {

    TWCR &= ~((1 << TWEA) | (1 << TWEN));
}
