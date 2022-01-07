
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mp_int ;
struct TYPE_3__ {int used; int sign; scalar_t__* digits; } ;


 int MP_ZPOS ;
 int assert (int ) ;

void
mp_int_zero(mp_int z)
{
 assert(z != ((void*)0));

 z->digits[0] = 0;
 z->used = 1;
 z->sign = MP_ZPOS;
}
