
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_div (int *,int *,int *,int const*,int *) ;
 int BN_set_bit (int *,int) ;
 int bn_check_top (int *) ;

int BN_reciprocal(BIGNUM *r, const BIGNUM *m, int len, BN_CTX *ctx)
{
    int ret = -1;
    BIGNUM *t;

    BN_CTX_start(ctx);
    if ((t = BN_CTX_get(ctx)) == ((void*)0))
        goto err;

    if (!BN_set_bit(t, len))
        goto err;

    if (!BN_div(r, ((void*)0), t, m, ctx))
        goto err;

    ret = len;
 err:
    bn_check_top(r);
    BN_CTX_end(ctx);
    return ret;
}
