
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p; int * q; scalar_t__ j; scalar_t__ g; } ;
typedef TYPE_1__ DH ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_check_prime (int *,int *,int *) ;
 scalar_t__ BN_cmp (scalar_t__,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 int BN_is_one (int *) ;
 int BN_mod_exp (int *,scalar_t__,int *,int *,int *) ;
 int BN_rshift1 (int *,int *) ;
 int * BN_value_one () ;
 int DH_CHECK_INVALID_J_VALUE ;
 int DH_CHECK_INVALID_Q_VALUE ;
 int DH_CHECK_P_NOT_PRIME ;
 int DH_CHECK_P_NOT_SAFE_PRIME ;
 int DH_CHECK_Q_NOT_PRIME ;
 int DH_NOT_SUITABLE_GENERATOR ;
 int DH_check_params (TYPE_1__ const*,int*) ;

int DH_check(const DH *dh, int *ret)
{
    int ok = 0, r;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *t1 = ((void*)0), *t2 = ((void*)0);

    if (!DH_check_params(dh, ret))
        return 0;

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    t1 = BN_CTX_get(ctx);
    t2 = BN_CTX_get(ctx);
    if (t2 == ((void*)0))
        goto err;

    if (dh->q) {
        if (BN_cmp(dh->g, BN_value_one()) <= 0)
            *ret |= DH_NOT_SUITABLE_GENERATOR;
        else if (BN_cmp(dh->g, dh->p) >= 0)
            *ret |= DH_NOT_SUITABLE_GENERATOR;
        else {

            if (!BN_mod_exp(t1, dh->g, dh->q, dh->p, ctx))
                goto err;
            if (!BN_is_one(t1))
                *ret |= DH_NOT_SUITABLE_GENERATOR;
        }
        r = BN_check_prime(dh->q, ctx, ((void*)0));
        if (r < 0)
            goto err;
        if (!r)
            *ret |= DH_CHECK_Q_NOT_PRIME;

        if (!BN_div(t1, t2, dh->p, dh->q, ctx))
            goto err;
        if (!BN_is_one(t2))
            *ret |= DH_CHECK_INVALID_Q_VALUE;
        if (dh->j && BN_cmp(dh->j, t1))
            *ret |= DH_CHECK_INVALID_J_VALUE;
    }

    r = BN_check_prime(dh->p, ctx, ((void*)0));
    if (r < 0)
        goto err;
    if (!r)
        *ret |= DH_CHECK_P_NOT_PRIME;
    else if (!dh->q) {
        if (!BN_rshift1(t1, dh->p))
            goto err;
        r = BN_check_prime(t1, ctx, ((void*)0));
        if (r < 0)
            goto err;
        if (!r)
            *ret |= DH_CHECK_P_NOT_SAFE_PRIME;
    }
    ok = 1;
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ok;
}
