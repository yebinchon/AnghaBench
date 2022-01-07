
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mp_int ;
struct TYPE_3__ {int used; scalar_t__* digits; scalar_t__ sign; } ;


 scalar_t__ MP_NEG ;

__attribute__((used)) static inline int
CMPZ(mp_int Z)
{
 if (Z->used == 1 && Z->digits[0] == 0)
  return 0;
 return (Z->sign == MP_NEG) ? -1 : 1;
}
