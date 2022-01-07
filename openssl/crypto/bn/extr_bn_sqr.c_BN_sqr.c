
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int bn_check_top (int *) ;
 int bn_correct_top (int *) ;
 int bn_sqr_fixed_top (int *,int const*,int *) ;

int BN_sqr(BIGNUM *r, const BIGNUM *a, BN_CTX *ctx)
{
    int ret = bn_sqr_fixed_top(r, a, ctx);

    bn_correct_top(r);
    bn_check_top(r);

    return ret;
}
