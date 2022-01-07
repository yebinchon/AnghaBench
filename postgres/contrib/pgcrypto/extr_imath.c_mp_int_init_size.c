
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
struct TYPE_5__ {int used; int alloc; int sign; scalar_t__* digits; } ;


 int * MP_DIGITS (TYPE_1__*) ;
 int MP_MEMORY ;
 int MP_OK ;
 int MP_ZPOS ;
 int assert (int ) ;
 int default_precision ;
 int mp_int_init (TYPE_1__*) ;
 scalar_t__* s_alloc (int) ;
 int s_round_prec (int) ;

mp_result
mp_int_init_size(mp_int z, mp_size prec)
{
 assert(z != ((void*)0));

 if (prec == 0)
 {
  prec = default_precision;
 }
 else if (prec == 1)
 {
  return mp_int_init(z);
 }
 else
 {
  prec = s_round_prec(prec);
 }

 z->digits = s_alloc(prec);
 if (MP_DIGITS(z) == ((void*)0))
  return MP_MEMORY;

 z->digits[0] = 0;
 z->used = 1;
 z->alloc = prec;
 z->sign = MP_ZPOS;

 return MP_OK;
}
