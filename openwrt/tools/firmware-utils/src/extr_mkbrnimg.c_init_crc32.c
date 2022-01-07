
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BPB ;
 int* crc32 ;
 int crc32_poly ;
 int ntohl (int ) ;

__attribute__((used)) static void init_crc32()
{
 const uint32_t poly = ntohl(crc32_poly);
 int n;

 for (n = 0; n < 1<<BPB; n++) {
  uint32_t crc = n;
  int bit;

  for (bit = 0; bit < BPB; bit++)
   crc = (crc & 1) ? (poly ^ (crc >> 1)) : (crc >> 1);
  crc32[n] = crc;
 }
}
