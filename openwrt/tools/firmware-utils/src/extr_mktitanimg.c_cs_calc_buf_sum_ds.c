
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* crctab ;

unsigned long cs_calc_buf_sum_ds(char *buf, int buf_size, char *sign, int sign_len)
{
 unsigned long crc = 0;
 char *cp = buf;
 unsigned long length = buf_size+sign_len;

 while(buf_size--)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ *cp++) & 0xFF];

 cp = sign;
 while(sign_len--)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ *cp++) & 0xFF];


 for(; length; length >>= 8)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ length) & 0xFF];

 crc = ~crc & 0xFFFFFFFF;

 return crc;
}
