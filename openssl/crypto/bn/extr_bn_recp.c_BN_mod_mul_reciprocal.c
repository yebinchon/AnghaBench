
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_RECP_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_div_recp (int *,int *,int const*,int *,int *) ;
 int BN_mul (int *,int const*,int const*,int *) ;
 int BN_sqr (int *,int const*,int *) ;
 int bn_check_top (int *) ;

int BN_mod_mul_reciprocal(BIGNUM *r, const BIGNUM *x, const BIGNUM *y,
                          BN_RECP_CTX *recp, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *a;
    const BIGNUM *ca;

    BN_CTX_start(ctx);
    if ((a = BN_CTX_get(ctx)) == ((void*)0))
        goto err;
    if (y != ((void*)0)) {
        if (x == y) {
            if (!BN_sqr(a, x, ctx))
                goto err;
        } else {
            if (!BN_mul(a, x, y, ctx))
                goto err;
        }
        ca = a;
    } else
        ca = x;

    ret = BN_div_recp(((void*)0), r, ca, recp, ctx);
 err:
    BN_CTX_end(ctx);
    bn_check_top(r);
    return ret;
}
