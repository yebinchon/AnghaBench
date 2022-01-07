
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;
typedef int mp_usmall ;
typedef int mp_int ;
typedef int mp_digit ;


 int MP_VALUE_DIGITS (int ) ;
 int s_ucmp (int ,int *) ;
 int s_ufake (int *,int ,int *) ;

__attribute__((used)) static int
s_uvcmp(mp_int a, mp_usmall uv)
{
 mpz_t vtmp;
 mp_digit vdig[MP_VALUE_DIGITS(uv)];

 s_ufake(&vtmp, uv, vdig);
 return s_ucmp(a, &vtmp);
}
