
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_11__ {int* digits; } ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 unsigned int MP_DIGIT_BIT ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 int MP_RANGE ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 unsigned int MP_USED (TYPE_1__*) ;
 int REQUIRE (int ) ;
 int TEMP (int ) ;
 int assert (int) ;
 int mp_int_copy (TYPE_1__*,int ) ;
 int mp_int_mul (TYPE_1__*,int ,TYPE_1__*) ;
 int mp_int_set_value (TYPE_1__*,int) ;
 int mp_int_sqr (int ,int ) ;

mp_result
mp_int_expt_full(mp_int a, mp_int b, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0));
 if (MP_SIGN(b) == MP_NEG)
  return MP_RANGE;

 DECLARE_TEMP(1);
 REQUIRE(mp_int_copy(a, TEMP(0)));

 (void) mp_int_set_value(c, 1);
 for (unsigned ix = 0; ix < MP_USED(b); ++ix)
 {
  mp_digit d = b->digits[ix];

  for (unsigned jx = 0; jx < MP_DIGIT_BIT; ++jx)
  {
   if (d & 1)
   {
    REQUIRE(mp_int_mul(c, TEMP(0), c));
   }

   d >>= 1;
   if (d == 0 && ix + 1 == MP_USED(b))
    break;
   REQUIRE(mp_int_sqr(TEMP(0), TEMP(0)));
  }
 }

 CLEANUP_TEMP();
 return MP_OK;
}
