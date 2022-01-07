
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_usmall ;
typedef scalar_t__ mp_digit ;


 int MP_DIGIT_BIT ;

__attribute__((used)) static int
s_uvpack(mp_usmall uv, mp_digit t[])
{
 int ndig = 0;

 if (uv == 0)
  t[ndig++] = 0;
 else
 {
  while (uv != 0)
  {
   t[ndig++] = (mp_digit) uv;
   uv >>= MP_DIGIT_BIT / 2;
   uv >>= MP_DIGIT_BIT / 2;
  }
 }

 return ndig;
}
