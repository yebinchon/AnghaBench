
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_7__ {int sign; int used; } ;


 int COPY (int *,int *,int ) ;
 int * MP_DIGITS (TYPE_1__*) ;
 int MP_MEMORY ;
 int MP_OK ;
 int MP_USED (TYPE_1__*) ;
 int assert (int) ;
 int s_pad (TYPE_1__*,int ) ;

mp_result
mp_int_copy(mp_int a, mp_int c)
{
 assert(a != ((void*)0) && c != ((void*)0));

 if (a != c)
 {
  mp_size ua = MP_USED(a);
  mp_digit *da,
       *dc;

  if (!s_pad(c, ua))
   return MP_MEMORY;

  da = MP_DIGITS(a);
  dc = MP_DIGITS(c);
  COPY(da, dc, ua);

  c->used = ua;
  c->sign = a->sign;
 }

 return MP_OK;
}
