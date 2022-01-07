
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int * mp_int ;


 int CLEANUP_TEMP () ;
 scalar_t__ CMPZ (int *) ;
 int DECLARE_TEMP (int) ;
 int GROW (int *,int) ;
 int MP_OK ;
 int MP_RANGE ;
 int MP_UNDEF ;
 int MP_USED (int *) ;
 int REQUIRE (int ) ;
 int * TEMP (int) ;
 int assert (int) ;
 int mp_int_copy (int *,int *) ;
 int mp_int_mod (int *,int *,int *) ;
 int s_brmu (int *,int *) ;
 int s_embar (int *,int *,int *,int *,int *) ;

mp_result
mp_int_exptmod(mp_int a, mp_int b, mp_int m, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0) && m != ((void*)0));


 if (CMPZ(m) == 0)
  return MP_UNDEF;
 if (CMPZ(b) < 0)
  return MP_RANGE;

 mp_size um = MP_USED(m);

 DECLARE_TEMP(3);
 REQUIRE(GROW(TEMP(0), 2 * um));
 REQUIRE(GROW(TEMP(1), 2 * um));

 mp_int s;

 if (c == b || c == m)
 {
  REQUIRE(GROW(TEMP(2), 2 * um));
  s = TEMP(2);
 }
 else
 {
  s = c;
 }

 REQUIRE(mp_int_mod(a, m, TEMP(0)));
 REQUIRE(s_brmu(TEMP(1), m));
 REQUIRE(s_embar(TEMP(0), b, m, TEMP(1), s));
 REQUIRE(mp_int_copy(s, c));

 CLEANUP_TEMP();
 return MP_OK;
}
