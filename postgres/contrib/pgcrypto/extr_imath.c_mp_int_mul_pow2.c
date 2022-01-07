
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_small ;
typedef int mp_size ;
typedef scalar_t__ mp_result ;
typedef int * mp_int ;


 scalar_t__ MP_MEMORY ;
 scalar_t__ MP_OK ;
 int assert (int) ;
 scalar_t__ mp_int_copy (int *,int *) ;
 scalar_t__ s_qmul (int *,int ) ;

mp_result
mp_int_mul_pow2(mp_int a, mp_small p2, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0) && p2 >= 0);

 mp_result res = mp_int_copy(a, c);

 if (res != MP_OK)
  return res;

 if (s_qmul(c, (mp_size) p2))
 {
  return MP_OK;
 }
 else
 {
  return MP_MEMORY;
 }
}
