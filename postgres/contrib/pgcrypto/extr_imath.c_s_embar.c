
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int mp_result ;
typedef int mp_int ;
typedef int mp_digit ;
struct TYPE_10__ {int alloc; int digits; } ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 int GROW (TYPE_1__*,int) ;
 int* MP_DIGITS (int ) ;
 int MP_DIGIT_BIT ;
 int MP_MEMORY ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int MP_USED (int ) ;
 scalar_t__ MP_ZPOS ;
 int REQUIRE (int ) ;
 TYPE_1__* TEMP (int) ;
 int UMUL (int ,int ,TYPE_1__*) ;
 int USQR (int ,TYPE_1__*) ;
 int ZERO (int ,int ) ;
 int assert (int) ;
 int mp_int_copy (TYPE_1__*,int ) ;
 int mp_int_set_value (int ,int) ;
 int s_reduce (TYPE_1__*,int ,int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static mp_result
s_embar(mp_int a, mp_int b, mp_int m, mp_int mu, mp_int c)
{
 mp_digit umu = MP_USED(mu);
 mp_digit *db = MP_DIGITS(b);
 mp_digit *dbt = db + MP_USED(b) - 1;

 DECLARE_TEMP(3);
 REQUIRE(GROW(TEMP(0), 4 * umu));
 REQUIRE(GROW(TEMP(1), 4 * umu));
 REQUIRE(GROW(TEMP(2), 4 * umu));
 ZERO(TEMP(0)->digits, TEMP(0)->alloc);
 ZERO(TEMP(1)->digits, TEMP(1)->alloc);
 ZERO(TEMP(2)->digits, TEMP(2)->alloc);

 (void) mp_int_set_value(c, 1);


 while (db < dbt)
 {
  mp_digit d = *db;

  for (int i = MP_DIGIT_BIT; i > 0; --i, d >>= 1)
  {
   if (d & 1)
   {

    UMUL(c, a, TEMP(0));
    if (!s_reduce(TEMP(0), m, mu, TEMP(1), TEMP(2)))
    {
     REQUIRE(MP_MEMORY);
    }
    mp_int_copy(TEMP(0), c);
   }

   USQR(a, TEMP(0));
   assert(MP_SIGN(TEMP(0)) == MP_ZPOS);
   if (!s_reduce(TEMP(0), m, mu, TEMP(1), TEMP(2)))
   {
    REQUIRE(MP_MEMORY);
   }
   assert(MP_SIGN(TEMP(0)) == MP_ZPOS);
   mp_int_copy(TEMP(0), a);
  }

  ++db;
 }


 mp_digit d = *dbt;

 for (;;)
 {
  if (d & 1)
  {
   UMUL(c, a, TEMP(0));
   if (!s_reduce(TEMP(0), m, mu, TEMP(1), TEMP(2)))
   {
    REQUIRE(MP_MEMORY);
   }
   mp_int_copy(TEMP(0), c);
  }

  d >>= 1;
  if (!d)
   break;

  USQR(a, TEMP(0));
  if (!s_reduce(TEMP(0), m, mu, TEMP(1), TEMP(2)))
  {
   REQUIRE(MP_MEMORY);
  }
  (void) mp_int_copy(TEMP(0), a);
 }

 CLEANUP_TEMP();
 return MP_OK;
}
