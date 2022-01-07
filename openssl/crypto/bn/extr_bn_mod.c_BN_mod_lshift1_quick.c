
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_cmp (int *,int const*) ;
 int BN_lshift1 (int *,int const*) ;
 int BN_sub (int *,int *,int const*) ;
 int bn_check_top (int *) ;

int BN_mod_lshift1_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *m)
{
    if (!BN_lshift1(r, a))
        return 0;
    bn_check_top(r);
    if (BN_cmp(r, m) >= 0)
        return BN_sub(r, r, m);
    return 1;
}
