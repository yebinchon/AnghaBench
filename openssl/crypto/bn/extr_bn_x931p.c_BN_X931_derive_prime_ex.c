
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_1__ ;


struct TYPE_37__ {scalar_t__ neg; } ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef TYPE_1__ const BIGNUM ;


 int BN_CTX_end (int *) ;
 TYPE_1__ const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int ) ;
 int BN_add (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int BN_check_prime (TYPE_1__ const*,int *,int *) ;
 int BN_copy (TYPE_1__ const*,TYPE_1__ const*) ;
 int BN_gcd (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_is_odd (TYPE_1__ const*) ;
 scalar_t__ BN_is_one (TYPE_1__ const*) ;
 int BN_mod_inverse (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_mod_sub (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_mul (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_sub (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int BN_sub_word (TYPE_1__ const*,int) ;
 int bn_x931_derive_pi (TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;

int BN_X931_derive_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                            const BIGNUM *Xp, const BIGNUM *Xp1,
                            const BIGNUM *Xp2, const BIGNUM *e, BN_CTX *ctx,
                            BN_GENCB *cb)
{
    int ret = 0;

    BIGNUM *t, *p1p2, *pm1;


    if (!BN_is_odd(e))
        return 0;

    BN_CTX_start(ctx);
    if (p1 == ((void*)0))
        p1 = BN_CTX_get(ctx);

    if (p2 == ((void*)0))
        p2 = BN_CTX_get(ctx);

    t = BN_CTX_get(ctx);

    p1p2 = BN_CTX_get(ctx);

    pm1 = BN_CTX_get(ctx);

    if (pm1 == ((void*)0))
        goto err;

    if (!bn_x931_derive_pi(p1, Xp1, ctx, cb))
        goto err;

    if (!bn_x931_derive_pi(p2, Xp2, ctx, cb))
        goto err;

    if (!BN_mul(p1p2, p1, p2, ctx))
        goto err;



    if (!BN_mod_inverse(p, p2, p1, ctx))
        goto err;

    if (!BN_mul(p, p, p2, ctx))
        goto err;

    if (!BN_mod_inverse(t, p1, p2, ctx))
        goto err;

    if (!BN_mul(t, t, p1, ctx))
        goto err;

    if (!BN_sub(p, p, t))
        goto err;

    if (p->neg && !BN_add(p, p, p1p2))
        goto err;



    if (!BN_mod_sub(p, p, Xp, p1p2, ctx))
        goto err;

    if (!BN_add(p, p, Xp))
        goto err;



    for (;;) {
        int i = 1;
        BN_GENCB_call(cb, 0, i++);
        if (!BN_copy(pm1, p))
            goto err;
        if (!BN_sub_word(pm1, 1))
            goto err;
        if (!BN_gcd(t, pm1, e, ctx))
            goto err;
        if (BN_is_one(t)) {





            int r = BN_check_prime(p, ctx, cb);
            if (r < 0)
                goto err;
            if (r)
                break;
        }
        if (!BN_add(p, p, p1p2))
            goto err;
    }

    BN_GENCB_call(cb, 3, 0);

    ret = 1;

 err:

    BN_CTX_end(ctx);

    return ret;
}
