
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;
typedef int mp_usmall ;
typedef int mp_result ;
typedef int mp_int ;
typedef int mp_digit ;


 int MP_VALUE_DIGITS (int ) ;
 int mp_int_init_copy (int ,int *) ;
 int s_ufake (int *,int ,int *) ;

mp_result
mp_int_init_uvalue(mp_int z, mp_usmall uvalue)
{
 mpz_t vtmp;
 mp_digit vbuf[MP_VALUE_DIGITS(uvalue)];

 s_ufake(&vtmp, uvalue, vbuf);
 return mp_int_init_copy(z, &vtmp);
}
