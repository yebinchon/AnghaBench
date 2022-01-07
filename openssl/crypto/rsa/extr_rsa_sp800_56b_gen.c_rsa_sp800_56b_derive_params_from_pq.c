
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dmp1; int * dmq1; int * iqmp; int * n; int * d; int * e; int dirty_cnt; int * p; int const* q; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_clear (int *) ;
 int BN_clear_free (int *) ;
 int * BN_dup (int const*) ;
 int BN_free (int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 int * BN_mod_inverse (int *,int const*,int *,int *) ;
 int BN_mul (int *,int *,int const*,int *) ;
 void* BN_new () ;
 int BN_num_bits (int *) ;
 void* BN_secure_new () ;
 int rsa_get_lcm (int *,int *,int const*,int *,int *,int *,int *,int *) ;

int rsa_sp800_56b_derive_params_from_pq(RSA *rsa, int nbits,
                                        const BIGNUM *e, BN_CTX *ctx)
{
    int ret = -1;
    BIGNUM *p1, *q1, *lcm, *p1q1, *gcd;

    BN_CTX_start(ctx);
    p1 = BN_CTX_get(ctx);
    q1 = BN_CTX_get(ctx);
    lcm = BN_CTX_get(ctx);
    p1q1 = BN_CTX_get(ctx);
    gcd = BN_CTX_get(ctx);
    if (gcd == ((void*)0))
        goto err;


    if (rsa_get_lcm(ctx, rsa->p, rsa->q, lcm, gcd, p1, q1, p1q1) != 1)
        goto err;


    BN_free(rsa->e);
    rsa->e = BN_dup(e);
    if (rsa->e == ((void*)0))
        goto err;

    BN_clear_free(rsa->d);

    rsa->d = BN_secure_new();
    if (rsa->d == ((void*)0) || BN_mod_inverse(rsa->d, e, lcm, ctx) == ((void*)0))
        goto err;


    if (BN_num_bits(rsa->d) <= (nbits >> 1)) {
        ret = 0;
        goto err;
    }


    if (rsa->n == ((void*)0))
        rsa->n = BN_new();
    if (rsa->n == ((void*)0) || !BN_mul(rsa->n, rsa->p, rsa->q, ctx))
        goto err;


    if (rsa->dmp1 == ((void*)0))
        rsa->dmp1 = BN_new();
    if (rsa->dmp1 == ((void*)0) || !BN_mod(rsa->dmp1, rsa->d, p1, ctx))
        goto err;


    if (rsa->dmq1 == ((void*)0))
        rsa->dmq1 = BN_secure_new();
    if (rsa->dmq1 == ((void*)0) || !BN_mod(rsa->dmq1, rsa->d, q1, ctx))
        goto err;


    BN_free(rsa->iqmp);
    rsa->iqmp = BN_secure_new();
    if (rsa->iqmp == ((void*)0)
            || BN_mod_inverse(rsa->iqmp, rsa->q, rsa->p, ctx) == ((void*)0))
        goto err;

    rsa->dirty_cnt++;
    ret = 1;
err:
    if (ret != 1) {
        BN_free(rsa->e);
        rsa->e = ((void*)0);
        BN_free(rsa->d);
        rsa->d = ((void*)0);
        BN_free(rsa->n);
        rsa->n = ((void*)0);
        BN_free(rsa->iqmp);
        rsa->iqmp = ((void*)0);
        BN_free(rsa->dmq1);
        rsa->dmq1 = ((void*)0);
        BN_free(rsa->dmp1);
        rsa->dmp1 = ((void*)0);
    }
    BN_clear(p1);
    BN_clear(q1);
    BN_clear(lcm);
    BN_clear(p1q1);
    BN_clear(gcd);

    BN_CTX_end(ctx);
    return ret;
}
