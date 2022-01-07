
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_mod_add (int *,int *,int *,int const*,int *) ;
 int BN_mod_exp (int *,int const*,int const*,int const*,int *) ;
 int BN_mod_mul (int *,int const*,int *,int const*,int *) ;
 int * BN_new () ;
 int * srp_Calc_k (int const*,int const*) ;

BIGNUM *SRP_Calc_B(const BIGNUM *b, const BIGNUM *N, const BIGNUM *g,
                   const BIGNUM *v)
{
    BIGNUM *kv = ((void*)0), *gb = ((void*)0);
    BIGNUM *B = ((void*)0), *k = ((void*)0);
    BN_CTX *bn_ctx;

    if (b == ((void*)0) || N == ((void*)0) || g == ((void*)0) || v == ((void*)0) ||
        (bn_ctx = BN_CTX_new()) == ((void*)0))
        return ((void*)0);

    if ((kv = BN_new()) == ((void*)0) ||
        (gb = BN_new()) == ((void*)0) || (B = BN_new()) == ((void*)0))
        goto err;



    if (!BN_mod_exp(gb, g, b, N, bn_ctx)
        || (k = srp_Calc_k(N, g)) == ((void*)0)
        || !BN_mod_mul(kv, v, k, N, bn_ctx)
        || !BN_mod_add(B, gb, kv, N, bn_ctx)) {
        BN_free(B);
        B = ((void*)0);
    }
 err:
    BN_CTX_free(bn_ctx);
    BN_clear_free(kv);
    BN_clear_free(gb);
    BN_free(k);
    return B;
}
