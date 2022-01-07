
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add (int const*,int const*,int const*) ;
 int BN_clear_free (int const*) ;
 int BN_free (int const*) ;
 int BN_mod_exp (int const*,int const*,int const*,int const*,int *) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int BN_mod_sub (int const*,int const*,int const*,int const*,int *) ;
 int BN_mul (int const*,int const*,int const*,int *) ;
 int const* BN_new () ;
 int const* srp_Calc_k (int const*,int const*) ;

BIGNUM *SRP_Calc_client_key(const BIGNUM *N, const BIGNUM *B, const BIGNUM *g,
                            const BIGNUM *x, const BIGNUM *a, const BIGNUM *u)
{
    BIGNUM *tmp = ((void*)0), *tmp2 = ((void*)0), *tmp3 = ((void*)0), *k = ((void*)0), *K = ((void*)0);
    BN_CTX *bn_ctx;

    if (u == ((void*)0) || B == ((void*)0) || N == ((void*)0) || g == ((void*)0) || x == ((void*)0)
        || a == ((void*)0) || (bn_ctx = BN_CTX_new()) == ((void*)0))
        return ((void*)0);

    if ((tmp = BN_new()) == ((void*)0) ||
        (tmp2 = BN_new()) == ((void*)0) ||
        (tmp3 = BN_new()) == ((void*)0))
        goto err;

    if (!BN_mod_exp(tmp, g, x, N, bn_ctx))
        goto err;
    if ((k = srp_Calc_k(N, g)) == ((void*)0))
        goto err;
    if (!BN_mod_mul(tmp2, tmp, k, N, bn_ctx))
        goto err;
    if (!BN_mod_sub(tmp, B, tmp2, N, bn_ctx))
        goto err;
    if (!BN_mul(tmp3, u, x, bn_ctx))
        goto err;
    if (!BN_add(tmp2, a, tmp3))
        goto err;
    K = BN_new();
    if (K != ((void*)0) && !BN_mod_exp(K, tmp, tmp2, N, bn_ctx)) {
        BN_free(K);
        K = ((void*)0);
    }

 err:
    BN_CTX_free(bn_ctx);
    BN_clear_free(tmp);
    BN_clear_free(tmp2);
    BN_clear_free(tmp3);
    BN_free(k);
    return K;
}
