
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef scalar_t__ mp_digit ;
struct TYPE_13__ {int used; int sign; scalar_t__* digits; } ;


 int CLAMP (TYPE_1__*) ;
 int MAX (int,int) ;
 int MP_DIGITS (TYPE_1__*) ;
 int MP_MEMORY ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int MP_USED (TYPE_1__*) ;
 int assert (int) ;
 int mp_int_zero (TYPE_1__*) ;
 int s_pad (TYPE_1__*,int) ;
 scalar_t__ s_uadd (int ,int ,int ,int,int) ;
 int s_ucmp (TYPE_1__*,TYPE_1__*) ;
 int s_usub (int ,int ,int ,int,int) ;

mp_result
mp_int_add(mp_int a, mp_int b, mp_int c)
{
 assert(a != ((void*)0) && b != ((void*)0) && c != ((void*)0));

 mp_size ua = MP_USED(a);
 mp_size ub = MP_USED(b);
 mp_size max = MAX(ua, ub);

 if (MP_SIGN(a) == MP_SIGN(b))
 {

  if (!s_pad(c, max))
   return MP_MEMORY;

  mp_digit carry = s_uadd(MP_DIGITS(a), MP_DIGITS(b), MP_DIGITS(c), ua, ub);
  mp_size uc = max;

  if (carry)
  {
   if (!s_pad(c, max + 1))
    return MP_MEMORY;

   c->digits[max] = carry;
   ++uc;
  }

  c->used = uc;
  c->sign = a->sign;

 }
 else
 {

  int cmp = s_ucmp(a, b);





  mp_int x,
     y;

  if (cmp == 0)
  {
   mp_int_zero(c);
   return MP_OK;
  }
  else if (cmp < 0)
  {
   x = b;
   y = a;
  }
  else
  {
   x = a;
   y = b;
  }

  if (!s_pad(c, MP_USED(x)))
   return MP_MEMORY;


  s_usub(MP_DIGITS(x), MP_DIGITS(y), MP_DIGITS(c), MP_USED(x), MP_USED(y));
  c->used = x->used;
  CLAMP(c);


  c->sign = x->sign;
 }

 return MP_OK;
}
