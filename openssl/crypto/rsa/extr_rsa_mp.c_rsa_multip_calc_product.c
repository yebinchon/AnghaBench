
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int prime_infos; int * q; int * p; } ;
struct TYPE_5__ {int * r; int * pp; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;
typedef TYPE_2__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_mul (int *,int *,int *,int *) ;
 int * BN_secure_new () ;
 int sk_RSA_PRIME_INFO_num (int ) ;
 TYPE_1__* sk_RSA_PRIME_INFO_value (int ,int) ;

int rsa_multip_calc_product(RSA *rsa)
{
    RSA_PRIME_INFO *pinfo;
    BIGNUM *p1 = ((void*)0), *p2 = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    int i, rv = 0, ex_primes;

    if ((ex_primes = sk_RSA_PRIME_INFO_num(rsa->prime_infos)) <= 0) {

        goto err;
    }

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;


    p1 = rsa->p;
    p2 = rsa->q;

    for (i = 0; i < ex_primes; i++) {
        pinfo = sk_RSA_PRIME_INFO_value(rsa->prime_infos, i);
        if (pinfo->pp == ((void*)0)) {
            pinfo->pp = BN_secure_new();
            if (pinfo->pp == ((void*)0))
                goto err;
        }
        if (!BN_mul(pinfo->pp, p1, p2, ctx))
            goto err;

        p1 = pinfo->pp;
        p2 = pinfo->r;
    }

    rv = 1;
 err:
    BN_CTX_free(ctx);
    return rv;
}
