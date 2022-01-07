
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_20__ {void* sign; } ;


 int CLEANUP_TEMP () ;
 int CMPZ (TYPE_1__*) ;
 int DECLARE_TEMP (int) ;
 int MIN (int,int) ;
 int MP_MEMORY ;
 int MP_OK ;
 int MP_UNDEF ;
 void* MP_ZPOS ;
 int REQUIRE (int ) ;
 TYPE_1__* TEMP (int) ;
 int assert (int) ;
 int mp_int_abs (TYPE_1__*,TYPE_1__*) ;
 int mp_int_copy (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mp_int_is_odd (TYPE_1__*) ;
 int mp_int_neg (TYPE_1__*,TYPE_1__*) ;
 int mp_int_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int s_dp2k (TYPE_1__*) ;
 int s_qdiv (TYPE_1__*,int) ;
 int s_qmul (TYPE_1__*,int) ;

mp_result
mp_int_gcd(mp_int a, mp_int b, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0));

 int ca = CMPZ(a);
 int cb = CMPZ(b);

 if (ca == 0 && cb == 0)
 {
  return MP_UNDEF;
 }
 else if (ca == 0)
 {
  return mp_int_abs(b, c);
 }
 else if (cb == 0)
 {
  return mp_int_abs(a, c);
 }

 DECLARE_TEMP(3);
 REQUIRE(mp_int_copy(a, TEMP(0)));
 REQUIRE(mp_int_copy(b, TEMP(1)));

 TEMP(0)->sign = MP_ZPOS;
 TEMP(1)->sign = MP_ZPOS;

 int k = 0;

 {
  int div2_u = s_dp2k(TEMP(0));
  int div2_v = s_dp2k(TEMP(1));

  k = MIN(div2_u, div2_v);
  s_qdiv(TEMP(0), (mp_size) k);
  s_qdiv(TEMP(1), (mp_size) k);
 }

 if (mp_int_is_odd(TEMP(0)))
 {
  REQUIRE(mp_int_neg(TEMP(1), TEMP(2)));
 }
 else
 {
  REQUIRE(mp_int_copy(TEMP(0), TEMP(2)));
 }

 for (;;)
 {
  s_qdiv(TEMP(2), s_dp2k(TEMP(2)));

  if (CMPZ(TEMP(2)) > 0)
  {
   REQUIRE(mp_int_copy(TEMP(2), TEMP(0)));
  }
  else
  {
   REQUIRE(mp_int_neg(TEMP(2), TEMP(1)));
  }

  REQUIRE(mp_int_sub(TEMP(0), TEMP(1), TEMP(2)));

  if (CMPZ(TEMP(2)) == 0)
   break;
 }

 REQUIRE(mp_int_abs(TEMP(0), c));
 if (!s_qmul(c, (mp_size) k))
  REQUIRE(MP_MEMORY);

 CLEANUP_TEMP();
 return MP_OK;
}
