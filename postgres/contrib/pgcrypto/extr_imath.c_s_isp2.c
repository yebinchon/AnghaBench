
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_int ;
typedef int mp_digit ;


 int* MP_DIGITS (int ) ;
 int MP_DIGIT_BIT ;
 int MP_USED (int ) ;

__attribute__((used)) static int
s_isp2(mp_int z)
{
 mp_size uz = MP_USED(z),
    k = 0;
 mp_digit *dz = MP_DIGITS(z),
    d;

 while (uz > 1)
 {
  if (*dz++ != 0)
   return -1;
  k += MP_DIGIT_BIT;
  --uz;
 }

 d = *dz;
 while (d > 1)
 {
  if (d & 1)
   return -1;
  ++k;
  d >>= 1;
 }

 return (int) k;
}
