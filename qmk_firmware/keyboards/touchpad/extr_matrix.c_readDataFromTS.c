
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ i2c_readReg (int,int ,int *,int,int) ;

uint8_t readDataFromTS(uint8_t reg) {
  uint8_t rx[1] = { 0 };
  if (i2c_readReg(0x1C << 1, reg, rx, 1, 100) == 0) {
    return rx[0];
  }
  return 0;
}
