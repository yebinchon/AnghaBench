
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_small ;
typedef int mp_size ;
typedef scalar_t__ mp_result ;
typedef int * mp_int ;


 scalar_t__ MP_OK ;
 int assert (int) ;
 scalar_t__ mp_int_copy (int *,int *) ;
 int s_qdiv (int *,int ) ;
 int s_qmod (int *,int ) ;

mp_result
mp_int_div_pow2(mp_int a, mp_small p2, mp_int q, mp_int r)
{
 assert(a != ((void*)0) && p2 >= 0 && q != r);

 mp_result res = MP_OK;

 if (q != ((void*)0) && (res = mp_int_copy(a, q)) == MP_OK)
 {
  s_qdiv(q, (mp_size) p2);
 }

 if (res == MP_OK && r != ((void*)0) && (res = mp_int_copy(a, r)) == MP_OK)
 {
  s_qmod(r, (mp_size) p2);
 }

 return res;
}
