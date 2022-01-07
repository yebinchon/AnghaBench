
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PORTC ;
 scalar_t__ TWBR ;
 scalar_t__ TWBR_val ;
 int TWCR ;
 int TWEA ;
 int TWEN ;
 int TWIE ;
 scalar_t__ TWSR ;

void i2c_init(void) {
    TWSR = 0;
    TWBR = (uint8_t)TWBR_val;
}
