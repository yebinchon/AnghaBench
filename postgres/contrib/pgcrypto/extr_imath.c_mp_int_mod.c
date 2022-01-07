
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int mp_int ;


 int CLEANUP_TEMP () ;
 scalar_t__ CMPZ (int ) ;
 int DECLARE_TEMP (int) ;
 int MP_OK ;
 int REQUIRE (int ) ;
 int TEMP (int ) ;
 int mp_int_add (int ,int ,int ) ;
 int mp_int_copy (int ,int ) ;
 int mp_int_div (int ,int ,int *,int ) ;

mp_result
mp_int_mod(mp_int a, mp_int m, mp_int c)
{
 DECLARE_TEMP(1);
 mp_int out = (m == c) ? TEMP(0) : c;

 REQUIRE(mp_int_div(a, m, ((void*)0), out));
 if (CMPZ(out) < 0)
 {
  REQUIRE(mp_int_add(out, m, c));
 }
 else
 {
  REQUIRE(mp_int_copy(out, c));
 }
 CLEANUP_TEMP();
 return MP_OK;
}
