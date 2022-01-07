
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mp_int ;
struct TYPE_4__ {int * digits; int single; } ;


 int * MP_DIGITS (TYPE_1__*) ;
 int s_free (int *) ;

void
mp_int_clear(mp_int z)
{
 if (z == ((void*)0))
  return;

 if (MP_DIGITS(z) != ((void*)0))
 {
  if (MP_DIGITS(z) != &(z->single))
   s_free(MP_DIGITS(z));

  z->digits = ((void*)0);
 }
}
