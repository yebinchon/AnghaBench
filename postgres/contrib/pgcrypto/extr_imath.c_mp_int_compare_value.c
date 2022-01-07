
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_small ;
typedef scalar_t__ mp_sign ;
typedef int * mp_int ;


 scalar_t__ MP_NEG ;
 scalar_t__ MP_SIGN (int *) ;
 scalar_t__ MP_ZPOS ;
 int assert (int ) ;
 int s_vcmp (int *,scalar_t__) ;

int
mp_int_compare_value(mp_int z, mp_small value)
{
 assert(z != ((void*)0));

 mp_sign vsign = (value < 0) ? MP_NEG : MP_ZPOS;

 if (vsign == MP_SIGN(z))
 {
  int cmp = s_vcmp(z, value);

  return (vsign == MP_ZPOS) ? cmp : -cmp;
 }
 else
 {
  return (value < 0) ? 1 : -1;
 }
}
