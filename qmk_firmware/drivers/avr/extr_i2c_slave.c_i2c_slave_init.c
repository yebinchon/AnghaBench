
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWAR ;
 int TWCR ;
 int TWEA ;
 int TWEN ;
 int TWIE ;
 int TWINT ;

void i2c_slave_init(uint8_t address) {

    TWAR = address;

    TWCR = (1 << TWIE) | (1 << TWEA) | (1 << TWINT) | (1 << TWEN);
}
