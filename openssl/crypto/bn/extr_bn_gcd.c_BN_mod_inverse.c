
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_F_BN_MOD_INVERSE ;
 int BN_R_NO_INVERSE ;
 int BNerr (int ,int ) ;
 int * int_bn_mod_inverse (int *,int const*,int const*,int *,int*) ;

BIGNUM *BN_mod_inverse(BIGNUM *in,
                       const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
{
    BIGNUM *rv;
    int noinv;
    rv = int_bn_mod_inverse(in, a, n, ctx, &noinv);
    if (noinv)
        BNerr(BN_F_BN_MOD_INVERSE, BN_R_NO_INVERSE);
    return rv;
}
