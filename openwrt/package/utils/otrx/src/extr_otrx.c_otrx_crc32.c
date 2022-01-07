
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32_tbl ;

uint32_t otrx_crc32(uint32_t crc, uint8_t *buf, size_t len) {
 while (len) {
  crc = crc32_tbl[(crc ^ *buf) & 0xff] ^ (crc >> 8);
  buf++;
  len--;
 }

 return crc;
}
