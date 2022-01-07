
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_lshift1 (int *,int const*) ;
 int BN_nnmod (int *,int *,int const*,int *) ;
 int bn_check_top (int *) ;

int BN_mod_lshift1(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx)
{
    if (!BN_lshift1(r, a))
        return 0;
    bn_check_top(r);
    return BN_nnmod(r, r, m, ctx);
}
