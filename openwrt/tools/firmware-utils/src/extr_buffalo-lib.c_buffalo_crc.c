
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* crc32_table ;

uint32_t buffalo_crc(void *buf, unsigned long len)
{
 unsigned char *p = buf;
 unsigned long t = len;
 uint32_t crc = 0;

 while (len--)
  crc = (crc << 8) ^ crc32_table[((crc >> 24) ^ *p++) & 0xFF];

 while (t) {
  crc = (crc << 8) ^ crc32_table[((crc >> 24) ^ t) & 0xFF];
  t >>= 8;
 }

 return ~crc;
}
