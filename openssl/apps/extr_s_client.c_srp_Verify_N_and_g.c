
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 scalar_t__ BN_add_word (int const*,int) ;
 int BN_check_prime (int const*,int *,int *) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int BN_free (int const*) ;
 scalar_t__ BN_is_odd (int const*) ;
 scalar_t__ BN_mod_exp (int const*,int const*,int const*,int const*,int *) ;
 int const* BN_new () ;
 scalar_t__ BN_rshift1 (int const*,int const*) ;

__attribute__((used)) static int srp_Verify_N_and_g(const BIGNUM *N, const BIGNUM *g)
{
    BN_CTX *bn_ctx = BN_CTX_new();
    BIGNUM *p = BN_new();
    BIGNUM *r = BN_new();
    int ret =
        g != ((void*)0) && N != ((void*)0) && bn_ctx != ((void*)0) && BN_is_odd(N) &&
        BN_check_prime(N, bn_ctx, ((void*)0)) == 1 &&
        p != ((void*)0) && BN_rshift1(p, N) &&

        BN_check_prime(p, bn_ctx, ((void*)0)) == 1 &&
        r != ((void*)0) &&

        BN_mod_exp(r, g, p, N, bn_ctx) &&
        BN_add_word(r, 1) && BN_cmp(r, N) == 0;

    BN_free(r);
    BN_free(p);
    BN_CTX_free(bn_ctx);
    return ret;
}
