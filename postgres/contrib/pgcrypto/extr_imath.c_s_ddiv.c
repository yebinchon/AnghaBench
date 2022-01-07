
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef int mp_size ;
typedef int mp_int ;
typedef int mp_digit ;


 int CLAMP (int ) ;
 int* MP_DIGITS (int ) ;
 int MP_DIGIT_BIT ;
 int MP_USED (int ) ;

__attribute__((used)) static mp_digit
s_ddiv(mp_int a, mp_digit b)
{
 mp_word w = 0,
    qdigit;
 mp_size ua = MP_USED(a);
 mp_digit *da = MP_DIGITS(a) + ua - 1;

 for ( ; ua > 0; --ua, --da)
 {
  w = (w << MP_DIGIT_BIT) | *da;

  if (w >= b)
  {
   qdigit = w / b;
   w = w % b;
  }
  else
  {
   qdigit = 0;
  }

  *da = (mp_digit) qdigit;
 }

 CLAMP(a);
 return (mp_digit) w;
}
