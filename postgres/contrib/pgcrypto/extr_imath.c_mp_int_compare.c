
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_sign ;
typedef int * mp_int ;


 scalar_t__ MP_SIGN (int *) ;
 scalar_t__ MP_ZPOS ;
 int assert (int) ;
 int s_ucmp (int *,int *) ;

int
mp_int_compare(mp_int a, mp_int b)
{
 assert(a != ((void*)0) && b != ((void*)0));

 mp_sign sa = MP_SIGN(a);

 if (sa == MP_SIGN(b))
 {
  int cmp = s_ucmp(a, b);





  if (sa == MP_ZPOS)
  {
   return cmp;
  }
  else
  {
   return -cmp;
  }
 }
 else if (sa == MP_ZPOS)
 {
  return 1;
 }
 else
 {
  return -1;
 }
}
