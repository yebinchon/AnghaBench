
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int single; int * digits; } ;
typedef TYPE_1__ mpz_t ;
typedef TYPE_1__* mp_int ;


 int * MP_DIGITS (TYPE_1__*) ;

void
mp_int_swap(mp_int a, mp_int c)
{
 if (a != c)
 {
  mpz_t tmp = *a;

  *a = *c;
  *c = tmp;

  if (MP_DIGITS(a) == &(c->single))
   a->digits = &(a->single);
  if (MP_DIGITS(c) == &(a->single))
   c->digits = &(c->single);
 }
}
