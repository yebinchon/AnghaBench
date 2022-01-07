
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ i2c_transmit (int,int*,int,int) ;

uint8_t writeDataToTS(uint8_t reg, uint8_t data) {
  uint8_t tx[2] = { reg, data };
  if (i2c_transmit(0x1C << 1, tx, 2, 100) == 0) {
    return 1;
  } else {
    return 0;
  }
}
