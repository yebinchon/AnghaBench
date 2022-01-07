
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int d; int e; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 scalar_t__ BN_mod_exp (int *,int *,int ,int ,int *) ;
 scalar_t__ BN_set_word (int *,int) ;
 int RSA_F_RSA_SP800_56B_PAIRWISE_TEST ;
 int RSA_R_PAIRWISE_TEST_FAILURE ;
 int RSAerr (int ,int ) ;

int rsa_sp800_56b_pairwise_test(RSA *rsa, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *k, *tmp;

    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    k = BN_CTX_get(ctx);
    if (k == ((void*)0))
        goto err;

    ret = (BN_set_word(k, 2)
          && BN_mod_exp(tmp, k, rsa->e, rsa->n, ctx)
          && BN_mod_exp(tmp, tmp, rsa->d, rsa->n, ctx)
          && BN_cmp(k, tmp) == 0);
    if (ret == 0)
        RSAerr(RSA_F_RSA_SP800_56B_PAIRWISE_TEST, RSA_R_PAIRWISE_TEST_FAILURE);
err:
    BN_CTX_end(ctx);
    return ret;
}
