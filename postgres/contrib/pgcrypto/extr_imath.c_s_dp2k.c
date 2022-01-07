
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;
typedef scalar_t__ mp_digit ;


 scalar_t__* MP_DIGITS (int ) ;
 scalar_t__ MP_DIGIT_BIT ;
 int MP_USED (int ) ;

__attribute__((used)) static int
s_dp2k(mp_int z)
{
 int k = 0;
 mp_digit *dp = MP_DIGITS(z),
    d;

 if (MP_USED(z) == 1 && *dp == 0)
  return 1;

 while (*dp == 0)
 {
  k += MP_DIGIT_BIT;
  ++dp;
 }

 d = *dp;
 while ((d & 1) == 0)
 {
  d >>= 1;
  ++k;
 }

 return k;
}
