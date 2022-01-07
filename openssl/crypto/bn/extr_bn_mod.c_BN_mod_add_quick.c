
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int bn_correct_top (int *) ;
 int bn_mod_add_fixed_top (int *,int const*,int const*,int const*) ;

int BN_mod_add_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                     const BIGNUM *m)
{
    int ret = bn_mod_add_fixed_top(r, a, b, m);

    if (ret)
        bn_correct_top(r);

    return ret;
}
