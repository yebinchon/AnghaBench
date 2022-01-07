
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef scalar_t__ mp_size ;
typedef scalar_t__ mp_digit ;


 scalar_t__ ADD_WILL_OVERFLOW (int,int) ;
 scalar_t__ HIGH_BIT_SET (int) ;
 scalar_t__ LOWER_HALF (int) ;
 int MP_DIGIT_MAX ;
 int UPPER_HALF (int) ;
 int assert (int) ;

__attribute__((used)) static void
s_usqr(mp_digit *da, mp_digit *dc, mp_size size_a)
{
 mp_size i,
    j;
 mp_word w;

 for (i = 0; i < size_a; ++i, dc += 2, ++da)
 {
  mp_digit *dct = dc,
       *dat = da;

  if (*da == 0)
   continue;


  w = (mp_word) *dat * (mp_word) *dat + (mp_word) *dct;
  *dct = LOWER_HALF(w);
  w = UPPER_HALF(w);
  ++dat;
  ++dct;

  for (j = i + 1; j < size_a; ++j, ++dat, ++dct)
  {
   mp_word t = (mp_word) *da * (mp_word) *dat;
   mp_word u = w + (mp_word) *dct,
      ov = 0;


   if (HIGH_BIT_SET(t))
    ov = 1;

   w = t + t;


   if (ADD_WILL_OVERFLOW(w, u))
    ov = 1;

   w += u;

   *dct = LOWER_HALF(w);
   w = UPPER_HALF(w);
   if (ov)
   {
    w += MP_DIGIT_MAX;
    ++w;
   }
  }

  w = w + *dct;
  *dct = (mp_digit) w;
  while ((w = UPPER_HALF(w)) != 0)
  {
   ++dct;
   w = w + *dct;
   *dct = LOWER_HALF(w);
  }

  assert(w == 0);
 }
}
