
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_add (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 int BN_sub (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;

int BN_mod_sub_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                     const BIGNUM *m)
{
    if (!BN_sub(r, a, b))
        return 0;
    if (r->neg)
        return BN_add(r, r, m);
    return 1;
}
