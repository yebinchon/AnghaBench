
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWCR ;
 unsigned char TWDR ;
 int TWEN ;
 int TWINT ;
 int TW_MT_DATA_ACK ;
 int TW_STATUS ;

unsigned char i2c_write( unsigned char data )
{
    uint8_t twst;


  TWDR = data;
  TWCR = (1<<TWINT) | (1<<TWEN);


  while(!(TWCR & (1<<TWINT)));


  twst = TW_STATUS & 0xF8;
  if( twst != TW_MT_DATA_ACK) return 1;
  return 0;

}
