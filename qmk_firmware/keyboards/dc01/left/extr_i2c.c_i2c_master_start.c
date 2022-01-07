
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TWCR ;
 int TWDR ;
 int TWEN ;
 int TWINT ;
 int TWSTA ;
 scalar_t__ TW_MR_SLA_ACK ;
 scalar_t__ TW_MT_SLA_ACK ;
 scalar_t__ TW_REP_START ;
 scalar_t__ TW_START ;
 scalar_t__ TW_STATUS ;
 int i2c_delay () ;

uint8_t i2c_master_start(uint8_t address) {
  TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTA);

  i2c_delay();


  if ( (TW_STATUS != TW_START) && (TW_STATUS != TW_REP_START))
    return 1;

  TWDR = address;
  TWCR = (1<<TWINT) | (1<<TWEN);

  i2c_delay();

  if ( (TW_STATUS != TW_MT_SLA_ACK) && (TW_STATUS != TW_MR_SLA_ACK) )
    return 1;
  else
    return 0;
}
