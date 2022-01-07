
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int * mp_int ;


 int CLEANUP_TEMP () ;
 scalar_t__ CMPZ (int *) ;
 int DECLARE_TEMP (int) ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 int MP_RANGE ;
 scalar_t__ MP_SIGN (int *) ;
 int MP_UNDEF ;
 int REQUIRE (int ) ;
 int TEMP (int) ;
 int assert (int) ;
 scalar_t__ mp_int_compare_value (int ,int) ;
 int mp_int_copy (int ,int *) ;
 int mp_int_egcd (int *,int *,int ,int ,int *) ;
 int mp_int_mod (int ,int *,int ) ;
 int mp_int_sub (int *,int ,int *) ;

mp_result
mp_int_invmod(mp_int a, mp_int m, mp_int c)
{
 assert(a != ((void*)0) && m != ((void*)0) && c != ((void*)0));

 if (CMPZ(a) == 0 || CMPZ(m) <= 0)
  return MP_RANGE;

 DECLARE_TEMP(2);

 REQUIRE(mp_int_egcd(a, m, TEMP(0), TEMP(1), ((void*)0)));

 if (mp_int_compare_value(TEMP(0), 1) != 0)
 {
  REQUIRE(MP_UNDEF);
 }


 REQUIRE(mp_int_mod(TEMP(1), m, TEMP(1)));







 if (MP_SIGN(a) == MP_NEG)
 {
  REQUIRE(mp_int_sub(m, TEMP(1), c));
 }
 else
 {
  REQUIRE(mp_int_copy(TEMP(1), c));
 }

 CLEANUP_TEMP();
 return MP_OK;
}
