
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirty_cnt; int * q; int * p; } ;
typedef TYPE_1__ RSA ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_X931_generate_Xpq (int *,int *,int,int *) ;
 int BN_X931_generate_prime_ex (int *,int *,int *,int *,int *,int *,int const*,int *,int *) ;
 void* BN_new () ;
 int RSA_X931_derive_ex (TYPE_1__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int const*,int *) ;

int RSA_X931_generate_key_ex(RSA *rsa, int bits, const BIGNUM *e,
                             BN_GENCB *cb)
{
    int ok = 0;
    BIGNUM *Xp = ((void*)0), *Xq = ((void*)0);
    BN_CTX *ctx = ((void*)0);

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto error;

    BN_CTX_start(ctx);
    Xp = BN_CTX_get(ctx);
    Xq = BN_CTX_get(ctx);
    if (Xq == ((void*)0))
        goto error;
    if (!BN_X931_generate_Xpq(Xp, Xq, bits, ctx))
        goto error;

    rsa->p = BN_new();
    rsa->q = BN_new();
    if (rsa->p == ((void*)0) || rsa->q == ((void*)0))
        goto error;



    if (!BN_X931_generate_prime_ex(rsa->p, ((void*)0), ((void*)0), ((void*)0), ((void*)0), Xp,
                                   e, ctx, cb))
        goto error;

    if (!BN_X931_generate_prime_ex(rsa->q, ((void*)0), ((void*)0), ((void*)0), ((void*)0), Xq,
                                   e, ctx, cb))
        goto error;






    if (!RSA_X931_derive_ex(rsa, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), e, cb))
        goto error;

    rsa->dirty_cnt++;
    ok = 1;

 error:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);

    if (ok)
        return 1;

    return 0;

}
