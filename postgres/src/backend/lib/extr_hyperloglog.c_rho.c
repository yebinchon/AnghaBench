
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int uint32 ;



__attribute__((used)) static inline uint8
rho(uint32 x, uint8 b)
{
 uint8 j = 1;

 while (j <= b && !(x & 0x80000000))
 {
  j++;
  x <<= 1;
 }

 return j;
}
