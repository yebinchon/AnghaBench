
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* crctab ;

unsigned long cs_calc_buf_sum(char *buf, int size)
{
 unsigned long crc = 0;
 char *cp = buf;
 unsigned long length = size;

 while(size--)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ *cp++) & 0xFF];

 for(; length; length >>= 8)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ length) & 0xFF];

 crc = ~crc & 0xFFFFFFFF;

 return crc;
}
