
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t si7021_crc8(uint8_t crc, uint8_t *buf, uint8_t size) {
 while (size--) {
  crc ^= *buf++;
  for (uint8_t i = 0; i < 8; i++) {
   if (crc & 0x80) {
    crc = (crc << 1) ^ 0x31;
   } else crc <<= 1;
  }
 }
 return crc;
}
