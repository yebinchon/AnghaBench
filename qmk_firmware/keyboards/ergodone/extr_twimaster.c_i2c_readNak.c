
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWCR ;
 unsigned char TWDR ;
 int TWEN ;
 int TWINT ;

unsigned char i2c_readNak(void)
{
 TWCR = (1<<TWINT) | (1<<TWEN);
 while(!(TWCR & (1<<TWINT)));

    return TWDR;

}
