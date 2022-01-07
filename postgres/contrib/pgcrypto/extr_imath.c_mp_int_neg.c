
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_8__ {scalar_t__ sign; } ;


 scalar_t__ CMPZ (TYPE_1__*) ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int assert (int) ;
 int mp_int_copy (TYPE_1__*,TYPE_1__*) ;

mp_result
mp_int_neg(mp_int a, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0));

 mp_result res;

 if ((res = mp_int_copy(a, c)) != MP_OK)
  return res;

 if (CMPZ(c) != 0)
  c->sign = 1 - MP_SIGN(a);

 return MP_OK;
}
