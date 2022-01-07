
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWCR ;
 int TWEN ;
 int TWINT ;
 int TWSTO ;

void i2c_stop(void) {

    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO);
}
