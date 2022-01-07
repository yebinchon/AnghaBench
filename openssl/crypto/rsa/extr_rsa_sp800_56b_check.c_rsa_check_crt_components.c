
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; int * q; int * iqmp; int * e; int * dmq1; int * dmp1; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_clear (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int * BN_copy (int *,int *) ;
 scalar_t__ BN_is_one (int *) ;
 scalar_t__ BN_mod_mul (int *,int *,int *,int *,int *) ;
 scalar_t__ BN_sub_word (int *,int) ;
 int * BN_value_one () ;

int rsa_check_crt_components(const RSA *rsa, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *r = ((void*)0), *p1 = ((void*)0), *q1 = ((void*)0);


    if (rsa->dmp1 == ((void*)0) || rsa->dmq1 == ((void*)0) || rsa->iqmp == ((void*)0)) {
        if (rsa->dmp1 != ((void*)0) || rsa->dmq1 != ((void*)0) || rsa->iqmp != ((void*)0))
            return 0;
        return 1;
    }

    BN_CTX_start(ctx);
    r = BN_CTX_get(ctx);
    p1 = BN_CTX_get(ctx);
    q1 = BN_CTX_get(ctx);
    ret = (q1 != ((void*)0))

          && (BN_copy(p1, rsa->p) != ((void*)0))
          && BN_sub_word(p1, 1)

          && (BN_copy(q1, rsa->q) != ((void*)0))
          && BN_sub_word(q1, 1)

          && (BN_cmp(rsa->dmp1, BN_value_one()) > 0)
          && (BN_cmp(rsa->dmp1, p1) < 0)

          && (BN_cmp(rsa->dmq1, BN_value_one()) > 0)
          && (BN_cmp(rsa->dmq1, q1) < 0)

          && (BN_cmp(rsa->iqmp, BN_value_one()) > 0)
          && (BN_cmp(rsa->iqmp, rsa->p) < 0)

          && BN_mod_mul(r, rsa->dmp1, rsa->e, p1, ctx)
          && BN_is_one(r)

          && BN_mod_mul(r, rsa->dmq1, rsa->e, q1, ctx)
          && BN_is_one(r)

          && BN_mod_mul(r, rsa->iqmp, rsa->q, rsa->p, ctx)
          && BN_is_one(r);
    BN_clear(p1);
    BN_clear(q1);
    BN_CTX_end(ctx);
    return ret;
}
