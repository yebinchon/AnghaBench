
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_mod_inv_vartime (int const*,int const*,int const*,int *) ;
 int BN_GF2m_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 scalar_t__ BN_is_zero (int const*) ;
 scalar_t__ BN_num_bits (int const*) ;
 int BN_priv_rand_ex (int const*,scalar_t__,int ,int ,int *) ;

int BN_GF2m_mod_inv(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
    BIGNUM *b = ((void*)0);
    int ret = 0;

    BN_CTX_start(ctx);
    if ((b = BN_CTX_get(ctx)) == ((void*)0))
        goto err;


    do {
        if (!BN_priv_rand_ex(b, BN_num_bits(p) - 1,
                             BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, ctx))
            goto err;
    } while (BN_is_zero(b));


    if (!BN_GF2m_mod_mul(r, a, b, p, ctx))
        goto err;


    if (!BN_GF2m_mod_inv_vartime(r, r, p, ctx))
        goto err;


    if (!BN_GF2m_mod_mul(r, r, b, p, ctx))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);
    return ret;
}
