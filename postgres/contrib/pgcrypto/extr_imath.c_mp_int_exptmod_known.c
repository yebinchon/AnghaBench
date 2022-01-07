
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef scalar_t__ mp_int ;


 int CLEANUP_TEMP () ;
 scalar_t__ CMPZ (scalar_t__) ;
 int DECLARE_TEMP (int) ;
 int GROW (scalar_t__,int) ;
 int MP_OK ;
 int MP_RANGE ;
 int MP_UNDEF ;
 int MP_USED (scalar_t__) ;
 int REQUIRE (int ) ;
 scalar_t__ TEMP (int) ;
 int assert (int) ;
 int mp_int_copy (scalar_t__,scalar_t__) ;
 int mp_int_mod (scalar_t__,scalar_t__,scalar_t__) ;
 int s_embar (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

mp_result
mp_int_exptmod_known(mp_int a, mp_int b, mp_int m, mp_int mu,
      mp_int c)
{
 assert(a && b && m && c);


 if (CMPZ(m) == 0)
  return MP_UNDEF;
 if (CMPZ(b) < 0)
  return MP_RANGE;

 DECLARE_TEMP(2);
 mp_size um = MP_USED(m);

 REQUIRE(GROW(TEMP(0), 2 * um));

 mp_int s;

 if (c == b || c == m)
 {
  REQUIRE(GROW(TEMP(1), 2 * um));
  s = TEMP(1);
 }
 else
 {
  s = c;
 }

 REQUIRE(mp_int_mod(a, m, TEMP(0)));
 REQUIRE(s_embar(TEMP(0), b, m, mu, s));
 REQUIRE(mp_int_copy(s, c));

 CLEANUP_TEMP();
 return MP_OK;
}
