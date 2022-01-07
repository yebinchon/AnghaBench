
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWCR ;
 unsigned char TWDR ;
 int TWEN ;
 int TWINT ;
 int TWSTA ;
 int TW_MR_SLA_ACK ;
 int TW_MT_SLA_ACK ;
 int TW_REP_START ;
 int TW_START ;
 int TW_STATUS ;

unsigned char i2c_start(unsigned char address)
{
    uint8_t twst;


 TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);


 while(!(TWCR & (1<<TWINT)));


 twst = TW_STATUS & 0xF8;
 if ( (twst != TW_START) && (twst != TW_REP_START)) return 1;


 TWDR = address;
 TWCR = (1<<TWINT) | (1<<TWEN);


 while(!(TWCR & (1<<TWINT)));


 twst = TW_STATUS & 0xF8;
 if ( (twst != TW_MT_SLA_ACK) && (twst != TW_MR_SLA_ACK) ) return 1;

 return 0;

}
