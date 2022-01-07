
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ neg; } ;
typedef int BN_CTX ;
typedef TYPE_1__ BIGNUM ;


 int BN_add (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 int BN_mod (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_sub (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 int stub1 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;

int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{





    if (!(BN_mod(r, m, d, ctx)))
        return 0;
    if (!r->neg)
        return 1;

    return (d->neg ? BN_sub : BN_add) (r, r, d);
}
