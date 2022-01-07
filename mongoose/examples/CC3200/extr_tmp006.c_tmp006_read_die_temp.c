
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int I2C_IF_ReadFrom (int ,unsigned char*,int,unsigned char*,int) ;
 unsigned char TMP006_REG_DIE_TEMP ;

double tmp006_read_die_temp(uint8_t addr) {
  unsigned char reg = TMP006_REG_DIE_TEMP;
  unsigned char val[2] = {0, 0};
  int status = I2C_IF_ReadFrom(addr, &reg, 1, val, 2);
  if (status < 0) return -1000;
  int temp = (val[0] << 6) | (val[1] >> 2);
  if (val[0] & 0x80) temp = -((1 << 14) - temp);
  return temp / 32.0;
}
