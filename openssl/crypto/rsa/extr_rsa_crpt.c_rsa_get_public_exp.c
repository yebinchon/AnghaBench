
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int * BN_mod_inverse (int *,int const*,int *,int *) ;
 int BN_mul (int *,int *,int *,int *) ;
 int BN_sub (int *,int const*,int ) ;
 int BN_value_one () ;

__attribute__((used)) static BIGNUM *rsa_get_public_exp(const BIGNUM *d, const BIGNUM *p,
                                  const BIGNUM *q, BN_CTX *ctx)
{
    BIGNUM *ret = ((void*)0), *r0, *r1, *r2;

    if (d == ((void*)0) || p == ((void*)0) || q == ((void*)0))
        return ((void*)0);

    BN_CTX_start(ctx);
    r0 = BN_CTX_get(ctx);
    r1 = BN_CTX_get(ctx);
    r2 = BN_CTX_get(ctx);
    if (r2 == ((void*)0))
        goto err;

    if (!BN_sub(r1, p, BN_value_one()))
        goto err;
    if (!BN_sub(r2, q, BN_value_one()))
        goto err;
    if (!BN_mul(r0, r1, r2, ctx))
        goto err;

    ret = BN_mod_inverse(((void*)0), d, r0, ctx);
 err:
    BN_CTX_end(ctx);
    return ret;
}
