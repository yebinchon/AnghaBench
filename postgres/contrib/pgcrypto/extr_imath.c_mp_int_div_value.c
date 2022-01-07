
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;
typedef int mp_small ;
typedef int mp_result ;
typedef int mp_int ;
typedef int mp_digit ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 int MP_OK ;
 int MP_VALUE_DIGITS (int ) ;
 int REQUIRE (int ) ;
 int TEMP (int ) ;
 int mp_int_div (int ,int *,int ,int ) ;
 int mp_int_to_int (int ,int *) ;
 int s_fake (int *,int ,int *) ;

mp_result
mp_int_div_value(mp_int a, mp_small value, mp_int q, mp_small *r)
{
 mpz_t vtmp;
 mp_digit vbuf[MP_VALUE_DIGITS(value)];

 s_fake(&vtmp, value, vbuf);

 DECLARE_TEMP(1);
 REQUIRE(mp_int_div(a, &vtmp, q, TEMP(0)));

 if (r)
  (void) mp_int_to_int(TEMP(0), r);

 CLEANUP_TEMP();
 return MP_OK;
}
