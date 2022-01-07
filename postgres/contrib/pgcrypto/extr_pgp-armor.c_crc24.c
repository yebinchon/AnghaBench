
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 unsigned int CRC24_INIT ;
 unsigned int CRC24_POLY ;

__attribute__((used)) static long
crc24(const uint8 *data, unsigned len)
{
 unsigned crc = CRC24_INIT;
 int i;

 while (len--)
 {
  crc ^= (*data++) << 16;
  for (i = 0; i < 8; i++)
  {
   crc <<= 1;
   if (crc & 0x1000000)
    crc ^= CRC24_POLY;
  }
 }
 return crc & 0xffffffL;
}
