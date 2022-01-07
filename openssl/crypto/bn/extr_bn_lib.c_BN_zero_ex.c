
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ top; scalar_t__ neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_FIXED_TOP ;

void BN_zero_ex(BIGNUM *a)
{
    a->neg = 0;
    a->top = 0;
    a->flags &= ~BN_FLG_FIXED_TOP;
}
