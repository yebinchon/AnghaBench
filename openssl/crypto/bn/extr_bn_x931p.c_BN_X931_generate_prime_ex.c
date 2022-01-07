
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ONE ;
 int BN_X931_derive_prime_ex (int *,int *,int *,int const*,int *,int *,int const*,int *,int *) ;
 int BN_priv_rand_ex (int *,int,int ,int ,int *) ;

int BN_X931_generate_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                              BIGNUM *Xp1, BIGNUM *Xp2,
                              const BIGNUM *Xp,
                              const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;

    BN_CTX_start(ctx);
    if (Xp1 == ((void*)0))
        Xp1 = BN_CTX_get(ctx);
    if (Xp2 == ((void*)0))
        Xp2 = BN_CTX_get(ctx);
    if (Xp1 == ((void*)0) || Xp2 == ((void*)0))
        goto error;

    if (!BN_priv_rand_ex(Xp1, 101, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY, ctx))
        goto error;
    if (!BN_priv_rand_ex(Xp2, 101, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY, ctx))
        goto error;
    if (!BN_X931_derive_prime_ex(p, p1, p2, Xp, Xp1, Xp2, e, ctx, cb))
        goto error;

    ret = 1;

 error:
    BN_CTX_end(ctx);

    return ret;

}
