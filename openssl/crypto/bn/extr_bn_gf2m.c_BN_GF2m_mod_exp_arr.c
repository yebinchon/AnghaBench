
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_mod_arr (int const*,int const*,int const*) ;
 int BN_GF2m_mod_mul_arr (int const*,int const*,int const*,int const*,int *) ;
 int BN_GF2m_mod_sqr_arr (int const*,int const*,int const*,int *) ;
 scalar_t__ BN_abs_is_word (int const*,int) ;
 int * BN_copy (int const*,int const*) ;
 scalar_t__ BN_is_bit_set (int const*,int) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_num_bits (int const*) ;
 int BN_one (int const*) ;
 int bn_check_top (int const*) ;

int BN_GF2m_mod_exp_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                        const int p[], BN_CTX *ctx)
{
    int ret = 0, i, n;
    BIGNUM *u;

    bn_check_top(a);
    bn_check_top(b);

    if (BN_is_zero(b))
        return BN_one(r);

    if (BN_abs_is_word(b, 1))
        return (BN_copy(r, a) != ((void*)0));

    BN_CTX_start(ctx);
    if ((u = BN_CTX_get(ctx)) == ((void*)0))
        goto err;

    if (!BN_GF2m_mod_arr(u, a, p))
        goto err;

    n = BN_num_bits(b) - 1;
    for (i = n - 1; i >= 0; i--) {
        if (!BN_GF2m_mod_sqr_arr(u, u, p, ctx))
            goto err;
        if (BN_is_bit_set(b, i)) {
            if (!BN_GF2m_mod_mul_arr(u, u, a, p, ctx))
                goto err;
        }
    }
    if (!BN_copy(r, u))
        goto err;
    bn_check_top(r);
    ret = 1;
 err:
    BN_CTX_end(ctx);
    return ret;
}
