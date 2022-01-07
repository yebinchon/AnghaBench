
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_usmall ;
typedef scalar_t__ mp_size ;
typedef int mp_result ;
typedef int * mp_int ;
typedef int mp_digit ;


 int * MP_DIGITS (int *) ;
 int MP_DIGIT_BIT ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 int MP_RANGE ;
 scalar_t__ MP_SIGN (int *) ;
 scalar_t__ MP_USED (int *) ;
 int MP_USMALL_MAX ;
 int assert (int ) ;
 scalar_t__ mp_int_compare_uvalue (int *,int ) ;

mp_result
mp_int_to_uint(mp_int z, mp_usmall *out)
{
 assert(z != ((void*)0));


 mp_size sz = MP_SIGN(z);

 if (sz == MP_NEG || mp_int_compare_uvalue(z, MP_USMALL_MAX) > 0)
 {
  return MP_RANGE;
 }

 mp_size uz = MP_USED(z);
 mp_digit *dz = MP_DIGITS(z) + uz - 1;
 mp_usmall uv = 0;

 while (uz > 0)
 {
  uv <<= MP_DIGIT_BIT / 2;
  uv = (uv << (MP_DIGIT_BIT / 2)) | *dz--;
  --uz;
 }

 if (out)
  *out = uv;

 return MP_OK;
}
