
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWCR ;
 int TWDR ;
 int TWEA ;
 int TWEN ;
 int TWINT ;
 int i2c_delay () ;

uint8_t i2c_master_read(int ack) {
  TWCR = (1<<TWINT) | (1<<TWEN) | (ack<<TWEA);

  i2c_delay();
  return TWDR;
}
