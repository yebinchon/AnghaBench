
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int s2k_decode_count (int) ;

__attribute__((used)) static uint8
decide_s2k_iter(unsigned rand_byte, int count)
{
 int iter;

 if (count == -1)
  return 96 + (rand_byte & 0x1F);

 for (iter = 0; iter <= 255; iter++)
  if (s2k_decode_count(iter) >= count)
   return iter;
 return 255;
}
