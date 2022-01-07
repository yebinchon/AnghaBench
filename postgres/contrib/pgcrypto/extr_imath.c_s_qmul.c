
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mp_size ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_7__ {int used; } ;


 int CLAMP (TYPE_1__*) ;
 int* MP_DIGITS (TYPE_1__*) ;
 int MP_DIGIT_BIT ;
 int MP_USED (TYPE_1__*) ;
 int ZERO (int*,int) ;
 int s_pad (TYPE_1__*,int) ;

__attribute__((used)) static int
s_qmul(mp_int z, mp_size p2)
{
 mp_size uz,
    need,
    rest,
    extra,
    i;
 mp_digit *from,
      *to,
    d;

 if (p2 == 0)
  return 1;

 uz = MP_USED(z);
 need = p2 / MP_DIGIT_BIT;
 rest = p2 % MP_DIGIT_BIT;






 extra = 0;
 if (rest != 0)
 {
  mp_digit *dz = MP_DIGITS(z) + uz - 1;

  if ((*dz >> (MP_DIGIT_BIT - rest)) != 0)
   extra = 1;
 }

 if (!s_pad(z, uz + need + extra))
  return 0;





 if (need > 0)
 {
  from = MP_DIGITS(z) + uz - 1;
  to = from + need;

  for (i = 0; i < uz; ++i)
   *to-- = *from--;

  ZERO(MP_DIGITS(z), need);
  uz += need;
 }

 if (rest)
 {
  d = 0;
  for (i = need, from = MP_DIGITS(z) + need; i < uz; ++i, ++from)
  {
   mp_digit save = *from;

   *from = (*from << rest) | (d >> (MP_DIGIT_BIT - rest));
   d = save;
  }

  d >>= (MP_DIGIT_BIT - rest);
  if (d != 0)
  {
   *from = d;
   uz += extra;
  }
 }

 z->used = uz;
 CLAMP(z);

 return 1;
}
