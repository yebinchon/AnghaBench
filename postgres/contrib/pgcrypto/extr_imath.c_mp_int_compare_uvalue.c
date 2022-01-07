
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_usmall ;
typedef int * mp_int ;


 scalar_t__ MP_NEG ;
 scalar_t__ MP_SIGN (int *) ;
 int assert (int ) ;
 int s_uvcmp (int *,int ) ;

int
mp_int_compare_uvalue(mp_int z, mp_usmall uv)
{
 assert(z != ((void*)0));

 if (MP_SIGN(z) == MP_NEG)
 {
  return -1;
 }
 else
 {
  return s_uvcmp(z, uv);
 }
}
