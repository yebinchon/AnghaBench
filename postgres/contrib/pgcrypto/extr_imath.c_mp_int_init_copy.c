
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mp_size ;
typedef scalar_t__ mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_8__ {int used; int sign; } ;


 int COPY (int ,int ,int) ;
 int MAX (int,int ) ;
 int MP_DIGITS (TYPE_1__*) ;
 scalar_t__ MP_OK ;
 int MP_USED (TYPE_1__*) ;
 int assert (int) ;
 int default_precision ;
 int mp_int_init (TYPE_1__*) ;
 scalar_t__ mp_int_init_size (TYPE_1__*,int) ;

mp_result
mp_int_init_copy(mp_int z, mp_int old)
{
 assert(z != ((void*)0) && old != ((void*)0));

 mp_size uold = MP_USED(old);

 if (uold == 1)
 {
  mp_int_init(z);
 }
 else
 {
  mp_size target = MAX(uold, default_precision);
  mp_result res = mp_int_init_size(z, target);

  if (res != MP_OK)
   return res;
 }

 z->used = uold;
 z->sign = old->sign;
 COPY(MP_DIGITS(old), MP_DIGITS(z), uold);

 return MP_OK;
}
