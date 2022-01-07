
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
 int TWSTO ;
 int TW_MR_DATA_NACK ;
 int TW_MT_SLA_NACK ;
 int TW_REP_START ;
 int TW_START ;
 int TW_STATUS ;

void i2c_start_wait(unsigned char address)
{
    uint8_t twst;


    while ( 1 )
    {

      TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);


      while(!(TWCR & (1<<TWINT)));


      twst = TW_STATUS & 0xF8;
      if ( (twst != TW_START) && (twst != TW_REP_START)) continue;


      TWDR = address;
      TWCR = (1<<TWINT) | (1<<TWEN);


      while(!(TWCR & (1<<TWINT)));


      twst = TW_STATUS & 0xF8;
      if ( (twst == TW_MT_SLA_NACK )||(twst ==TW_MR_DATA_NACK) )
      {

          TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTO);


          while(TWCR & (1<<TWSTO));

          continue;
      }

      break;
     }

}
