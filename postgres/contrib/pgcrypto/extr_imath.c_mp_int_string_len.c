
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_size ;
typedef int mp_result ;
typedef int * mp_int ;


 scalar_t__ MP_MAX_RADIX ;
 scalar_t__ MP_MIN_RADIX ;
 scalar_t__ MP_NEG ;
 scalar_t__ MP_SIGN (int *) ;
 int assert (int) ;
 int s_outlen (int *,scalar_t__) ;

mp_result
mp_int_string_len(mp_int z, mp_size radix)
{
 assert(z != ((void*)0));
 assert(radix >= MP_MIN_RADIX && radix <= MP_MAX_RADIX);

 int len = s_outlen(z, radix) + 1;


 if (MP_SIGN(z) == MP_NEG)
  len += 1;

 return len;
}
