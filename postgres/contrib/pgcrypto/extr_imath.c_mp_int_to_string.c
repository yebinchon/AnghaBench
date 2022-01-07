
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;
typedef scalar_t__ mp_size ;
typedef int mp_result ;
typedef int * mp_int ;
typedef int mp_digit ;


 scalar_t__ CMPZ (int *) ;
 scalar_t__ MP_MAX_RADIX ;
 scalar_t__ MP_MIN_RADIX ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 scalar_t__ MP_SIGN (int *) ;
 int MP_TRUNC ;
 int assert (int) ;
 int mp_int_clear (int *) ;
 int mp_int_init_copy (int *,int *) ;
 int s_ddiv (int *,int ) ;
 void* s_val2ch (int ,int) ;

mp_result
mp_int_to_string(mp_int z, mp_size radix, char *str, int limit)
{
 assert(z != ((void*)0) && str != ((void*)0) && limit >= 2);
 assert(radix >= MP_MIN_RADIX && radix <= MP_MAX_RADIX);

 int cmp = 0;

 if (CMPZ(z) == 0)
 {
  *str++ = s_val2ch(0, 1);
 }
 else
 {
  mp_result res;
  mpz_t tmp;
  char *h,
       *t;

  if ((res = mp_int_init_copy(&tmp, z)) != MP_OK)
   return res;

  if (MP_SIGN(z) == MP_NEG)
  {
   *str++ = '-';
   --limit;
  }
  h = str;


  for ( ; limit > 0; --limit)
  {
   mp_digit d;

   if ((cmp = CMPZ(&tmp)) == 0)
    break;

   d = s_ddiv(&tmp, (mp_digit) radix);
   *str++ = s_val2ch(d, 1);
  }
  t = str - 1;


  while (h < t)
  {
   char tc = *h;

   *h++ = *t;
   *t-- = tc;
  }

  mp_int_clear(&tmp);
 }

 *str = '\0';
 if (cmp == 0)
 {
  return MP_OK;
 }
 else
 {
  return MP_TRUNC;
 }
}
