
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_small ;
typedef int mp_result ;
typedef int * mp_int ;


 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 int MP_OK ;
 int MP_RANGE ;
 int REQUIRE (int ) ;
 int TEMP (int ) ;
 int assert (int ) ;
 unsigned int labs (scalar_t__) ;
 int mp_int_copy (int *,int ) ;
 int mp_int_mul (int *,int ,int *) ;
 int mp_int_set_value (int *,int) ;
 int mp_int_sqr (int ,int ) ;

mp_result
mp_int_expt(mp_int a, mp_small b, mp_int c)
{
 assert(c != ((void*)0));
 if (b < 0)
  return MP_RANGE;

 DECLARE_TEMP(1);
 REQUIRE(mp_int_copy(a, TEMP(0)));

 (void) mp_int_set_value(c, 1);
 unsigned int v = labs(b);

 while (v != 0)
 {
  if (v & 1)
  {
   REQUIRE(mp_int_mul(c, TEMP(0), c));
  }

  v >>= 1;
  if (v == 0)
   break;

  REQUIRE(mp_int_sqr(TEMP(0), TEMP(0)));
 }

 CLEANUP_TEMP();
 return MP_OK;
}
