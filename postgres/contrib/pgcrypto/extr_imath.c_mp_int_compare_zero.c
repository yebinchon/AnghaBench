
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mp_int ;
struct TYPE_5__ {scalar_t__* digits; } ;


 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int MP_USED (TYPE_1__*) ;
 scalar_t__ MP_ZPOS ;
 int assert (int ) ;

int
mp_int_compare_zero(mp_int z)
{
 assert(z != ((void*)0));

 if (MP_USED(z) == 1 && z->digits[0] == 0)
 {
  return 0;
 }
 else if (MP_SIGN(z) == MP_ZPOS)
 {
  return 1;
 }
 else
 {
  return -1;
 }
}
