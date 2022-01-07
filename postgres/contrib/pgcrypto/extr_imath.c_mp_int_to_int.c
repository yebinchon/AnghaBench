
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_usmall ;
typedef int mp_small ;
typedef scalar_t__ mp_sign ;
typedef int mp_result ;
typedef int * mp_int ;
typedef int mp_digit ;


 int * MP_DIGITS (int *) ;
 int MP_DIGIT_BIT ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 int MP_RANGE ;
 scalar_t__ MP_SIGN (int *) ;
 int MP_SMALL_MAX ;
 int MP_SMALL_MIN ;
 int MP_USED (int *) ;
 scalar_t__ MP_ZPOS ;
 int assert (int ) ;
 scalar_t__ mp_int_compare_value (int *,int ) ;

mp_result
mp_int_to_int(mp_int z, mp_small *out)
{
 assert(z != ((void*)0));


 mp_sign sz = MP_SIGN(z);

 if ((sz == MP_ZPOS && mp_int_compare_value(z, MP_SMALL_MAX) > 0) ||
  mp_int_compare_value(z, MP_SMALL_MIN) < 0)
 {
  return MP_RANGE;
 }

 mp_usmall uz = MP_USED(z);
 mp_digit *dz = MP_DIGITS(z) + uz - 1;
 mp_small uv = 0;

 while (uz > 0)
 {
  uv <<= MP_DIGIT_BIT / 2;
  uv = (uv << (MP_DIGIT_BIT / 2)) | *dz--;
  --uz;
 }

 if (out)
  *out = (mp_small) ((sz == MP_NEG) ? -uv : uv);

 return MP_OK;
}
