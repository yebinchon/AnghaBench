
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_3__ {int alloc; int used; int sign; scalar_t__ single; scalar_t__* digits; } ;


 int MP_BADARG ;
 int MP_OK ;
 int MP_ZPOS ;

mp_result
mp_int_init(mp_int z)
{
 if (z == ((void*)0))
  return MP_BADARG;

 z->single = 0;
 z->digits = &(z->single);
 z->alloc = 1;
 z->used = 1;
 z->sign = MP_ZPOS;

 return MP_OK;
}
