
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dmax; int flags; scalar_t__ top; scalar_t__ neg; int * d; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_FIXED_TOP ;
 int OPENSSL_cleanse (int *,int) ;
 int bn_check_top (TYPE_1__*) ;

void BN_clear(BIGNUM *a)
{
    if (a == ((void*)0))
        return;
    bn_check_top(a);
    if (a->d != ((void*)0))
        OPENSSL_cleanse(a->d, sizeof(*a->d) * a->dmax);
    a->neg = 0;
    a->top = 0;
    a->flags &= ~BN_FLG_FIXED_TOP;
}
