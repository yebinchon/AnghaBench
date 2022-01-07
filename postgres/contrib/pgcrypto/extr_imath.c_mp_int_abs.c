
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_6__ {int sign; } ;


 int MP_OK ;
 int MP_ZPOS ;
 int assert (int) ;
 int mp_int_copy (TYPE_1__*,TYPE_1__*) ;

mp_result
mp_int_abs(mp_int a, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0));

 mp_result res;

 if ((res = mp_int_copy(a, c)) != MP_OK)
  return res;

 c->sign = MP_ZPOS;
 return MP_OK;
}
