
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int* crc_32_tab ;

__attribute__((used)) static uint32 crc32(uint32 crc, uint8* p, size_t n)
{
 while (n--)
 {
  crc = crc_32_tab[(crc ^ *p++) & 0xff] ^ (crc >> 8);
 }
 return crc;
}
