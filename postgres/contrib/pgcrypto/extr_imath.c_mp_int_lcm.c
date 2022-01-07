
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int * mp_int ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 int MP_OK ;
 int REQUIRE (int ) ;
 int TEMP (int ) ;
 int assert (int) ;
 int mp_int_copy (int ,int *) ;
 int mp_int_div (int *,int ,int ,int *) ;
 int mp_int_gcd (int *,int *,int ) ;
 int mp_int_mul (int ,int *,int ) ;

mp_result
mp_int_lcm(mp_int a, mp_int b, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0));
 DECLARE_TEMP(1);
 REQUIRE(mp_int_gcd(a, b, TEMP(0)));
 REQUIRE(mp_int_div(a, TEMP(0), TEMP(0), ((void*)0)));
 REQUIRE(mp_int_mul(TEMP(0), b, TEMP(0)));
 REQUIRE(mp_int_copy(TEMP(0), c));

 CLEANUP_TEMP();
 return MP_OK;
}
