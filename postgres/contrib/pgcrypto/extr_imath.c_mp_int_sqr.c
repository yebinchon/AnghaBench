
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_8__ {int alloc; int used; int sign; int * digits; } ;


 int CLAMP (TYPE_1__*) ;
 int MAX (int,int ) ;
 int * MP_DIGITS (TYPE_1__*) ;
 int MP_MEMORY ;
 int MP_OK ;
 int MP_USED (TYPE_1__*) ;
 int MP_ZPOS ;
 int ZERO (int *,int) ;
 int assert (int) ;
 int default_precision ;
 int * s_alloc (int) ;
 int s_free (int *) ;
 int s_ksqr (int *,int *,int) ;
 int s_pad (TYPE_1__*,int) ;
 int s_round_prec (int) ;

mp_result
mp_int_sqr(mp_int a, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0));


 mp_size osize = (mp_size) 4 * ((MP_USED(a) + 1) / 2);
 mp_size p = 0;
 mp_digit *out;

 if (a == c)
 {
  p = s_round_prec(osize);
  p = MAX(p, default_precision);

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

 s_ksqr(MP_DIGITS(a), out, MP_USED(a));





 if (out != MP_DIGITS(c))
 {
  if ((void *) MP_DIGITS(c) != (void *) c)
   s_free(MP_DIGITS(c));
  c->digits = out;
  c->alloc = p;
 }

 c->used = osize;
 CLAMP(c);
 c->sign = MP_ZPOS;

 return MP_OK;
}
