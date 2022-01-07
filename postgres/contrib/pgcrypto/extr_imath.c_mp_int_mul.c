
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_sign ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_12__ {int alloc; int used; int sign; int * digits; } ;


 int CLAMP (TYPE_1__*) ;
 int MAX (int,int) ;
 int * MP_DIGITS (TYPE_1__*) ;
 int MP_MEMORY ;
 int MP_NEG ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int MP_USED (TYPE_1__*) ;
 int MP_ZPOS ;
 int ZERO (int *,int) ;
 int assert (int) ;
 int default_precision ;
 scalar_t__ mp_int_compare_zero (TYPE_1__*) ;
 int mp_int_zero (TYPE_1__*) ;
 int * s_alloc (int) ;
 int s_free (int *) ;
 int s_kmul (int *,int *,int *,int,int) ;
 int s_pad (TYPE_1__*,int) ;
 int s_round_prec (int) ;

mp_result
mp_int_mul(mp_int a, mp_int b, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0));


 if (mp_int_compare_zero(a) == 0 || mp_int_compare_zero(b) == 0)
 {
  mp_int_zero(c);
  return MP_OK;
 }


 mp_sign osign = (MP_SIGN(a) == MP_SIGN(b)) ? MP_ZPOS : MP_NEG;





 mp_size ua = MP_USED(a);
 mp_size ub = MP_USED(b);
 mp_size osize = MAX(ua, ub);

 osize = 4 * ((osize + 1) / 2);

 mp_digit *out;
 mp_size p = 0;

 if (c == a || c == b)
 {
  p = MAX(s_round_prec(osize), default_precision);

  if ((out = s_alloc(p)) == ((void*)0))
   return MP_MEMORY;
 }
 else
 {
  if (!s_pad(c, osize))
   return MP_MEMORY;

  out = MP_DIGITS(c);
 }
 ZERO(out, osize);

 if (!s_kmul(MP_DIGITS(a), MP_DIGITS(b), out, ua, ub))
  return MP_MEMORY;





 if (out != MP_DIGITS(c))
 {
  if ((void *) MP_DIGITS(c) != (void *) c)
   s_free(MP_DIGITS(c));
  c->digits = out;
  c->alloc = p;
 }

 c->used = osize;
 CLAMP(c);
 c->sign = osign;

 return MP_OK;
}
