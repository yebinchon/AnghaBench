
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


typedef int mp_small ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_24__ {void* sign; } ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int MP_UNDEF ;
 void* MP_ZPOS ;
 int REQUIRE (int ) ;
 TYPE_1__* TEMP (int) ;
 int assert (int) ;
 scalar_t__ mp_int_compare_unsigned (TYPE_1__*,TYPE_1__*) ;
 int mp_int_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_int_div (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 int mp_int_expt (TYPE_1__*,int,TYPE_1__*) ;
 int mp_int_mul_value (TYPE_1__*,int,TYPE_1__*) ;
 int mp_int_neg (TYPE_1__*,TYPE_1__*) ;
 int mp_int_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_int_sub_value (TYPE_1__*,int,TYPE_1__*) ;

mp_result
mp_int_root(mp_int a, mp_small b, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0) && b > 0);

 if (b == 1)
 {
  return mp_int_copy(a, c);
 }
 bool flips = 0;

 if (MP_SIGN(a) == MP_NEG)
 {
  if (b % 2 == 0)
  {
   return MP_UNDEF;

  }
  else
  {
   flips = 1;
  }
 }

 DECLARE_TEMP(5);
 REQUIRE(mp_int_copy(a, TEMP(0)));
 REQUIRE(mp_int_copy(a, TEMP(1)));
 TEMP(0)->sign = MP_ZPOS;
 TEMP(1)->sign = MP_ZPOS;

 for (;;)
 {
  REQUIRE(mp_int_expt(TEMP(1), b, TEMP(2)));

  if (mp_int_compare_unsigned(TEMP(2), TEMP(0)) <= 0)
   break;

  REQUIRE(mp_int_sub(TEMP(2), TEMP(0), TEMP(2)));
  REQUIRE(mp_int_expt(TEMP(1), b - 1, TEMP(3)));
  REQUIRE(mp_int_mul_value(TEMP(3), b, TEMP(3)));
  REQUIRE(mp_int_div(TEMP(2), TEMP(3), TEMP(4), ((void*)0)));
  REQUIRE(mp_int_sub(TEMP(1), TEMP(4), TEMP(4)));

  if (mp_int_compare_unsigned(TEMP(1), TEMP(4)) == 0)
  {
   REQUIRE(mp_int_sub_value(TEMP(4), 1, TEMP(4)));
  }
  REQUIRE(mp_int_copy(TEMP(4), TEMP(1)));
 }

 REQUIRE(mp_int_copy(TEMP(1), c));


 if (flips)
  (void) mp_int_neg(c, c);

 CLEANUP_TEMP();
 return MP_OK;
}
