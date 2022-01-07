
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 int BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_nnmod (int *,int const*,int const*,int *) ;

int SRP_Verify_B_mod_N(const BIGNUM *B, const BIGNUM *N)
{
    BIGNUM *r;
    BN_CTX *bn_ctx;
    int ret = 0;

    if (B == ((void*)0) || N == ((void*)0) || (bn_ctx = BN_CTX_new()) == ((void*)0))
        return 0;

    if ((r = BN_new()) == ((void*)0))
        goto err;

    if (!BN_nnmod(r, B, N, bn_ctx))
        goto err;
    ret = !BN_is_zero(r);
 err:
    BN_CTX_free(bn_ctx);
    BN_free(r);
    return ret;
}
