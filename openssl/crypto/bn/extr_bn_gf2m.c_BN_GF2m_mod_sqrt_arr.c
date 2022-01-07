
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_mod_exp_arr (int const*,int const*,int const*,int const*,int *) ;
 int BN_set_bit (int const*,int const) ;
 int BN_zero (int const*) ;
 int bn_check_top (int const*) ;

int BN_GF2m_mod_sqrt_arr(BIGNUM *r, const BIGNUM *a, const int p[],
                         BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *u;

    bn_check_top(a);

    if (p[0] == 0) {

        BN_zero(r);
        return 1;
    }

    BN_CTX_start(ctx);
    if ((u = BN_CTX_get(ctx)) == ((void*)0))
        goto err;

    if (!BN_set_bit(u, p[0] - 1))
        goto err;
    ret = BN_GF2m_mod_exp_arr(r, a, u, p, ctx);
    bn_check_top(r);

 err:
    BN_CTX_end(ctx);
    return ret;
}
