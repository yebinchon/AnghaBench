
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* crc32_table ;

__attribute__((used)) static uint32_t crc32(uint32_t crc,
        const unsigned char *buf,
        unsigned int len)
{
 crc = crc ^ 0xffffffffUL;
 do {
  crc = crc32_table[((int)crc ^ (*buf++)) & 0xff] ^ (crc >> 8);
 } while (--len);
 return crc ^ 0xffffffffUL;
}
