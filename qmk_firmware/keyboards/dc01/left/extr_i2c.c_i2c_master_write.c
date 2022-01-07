
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWCR ;
 int TWDR ;
 int TWEN ;
 int TWINT ;
 scalar_t__ TW_MT_DATA_ACK ;
 scalar_t__ TW_STATUS ;
 int i2c_delay () ;

uint8_t i2c_master_write(uint8_t data) {
  TWDR = data;
  TWCR = (1<<TWINT) | (1<<TWEN);

  i2c_delay();


  return (TW_STATUS == TW_MT_DATA_ACK) ? 0 : 1;
}
