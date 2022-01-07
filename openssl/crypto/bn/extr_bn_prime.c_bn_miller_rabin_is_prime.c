
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int const*,int *) ;
 int BN_PRIMETEST_COMPOSITE ;
 int BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME ;
 int BN_PRIMETEST_COMPOSITE_WITH_FACTOR ;
 int BN_PRIMETEST_PROBABLY_PRIME ;
 int BN_add_word (int const*,int) ;
 int BN_clear (int const*) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 scalar_t__ BN_copy (int const*,int const*) ;
 int BN_gcd (int const*,int const*,int const*,int *) ;
 int BN_is_bit_set (int const*,int) ;
 scalar_t__ BN_is_negative (int const*) ;
 int BN_is_odd (int const*) ;
 scalar_t__ BN_is_one (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod_exp_mont (int const*,int const*,int const*,int const*,int *,int *) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_priv_rand_range_ex (int const*,int const*,int *) ;
 int BN_rshift (int const*,int const*,int) ;
 scalar_t__ BN_sub_word (int const*,int) ;
 int bn_mr_min_checks (int ) ;

int bn_miller_rabin_is_prime(const BIGNUM *w, int iterations, BN_CTX *ctx,
                             BN_GENCB *cb, int enhanced, int *status)
{
    int i, j, a, ret = 0;
    BIGNUM *g, *w1, *w3, *x, *m, *z, *b;
    BN_MONT_CTX *mont = ((void*)0);


    if (!BN_is_odd(w))
        return 0;

    BN_CTX_start(ctx);
    g = BN_CTX_get(ctx);
    w1 = BN_CTX_get(ctx);
    w3 = BN_CTX_get(ctx);
    x = BN_CTX_get(ctx);
    m = BN_CTX_get(ctx);
    z = BN_CTX_get(ctx);
    b = BN_CTX_get(ctx);

    if (!(b != ((void*)0)

            && BN_copy(w1, w)
            && BN_sub_word(w1, 1)

            && BN_copy(w3, w)
            && BN_sub_word(w3, 3)))
        goto err;


    if (BN_is_zero(w3) || BN_is_negative(w3))
        goto err;


    a = 1;
    while (!BN_is_bit_set(w1, a))
        a++;

    if (!BN_rshift(m, w1, a))
        goto err;


    mont = BN_MONT_CTX_new();
    if (mont == ((void*)0) || !BN_MONT_CTX_set(mont, w, ctx))
        goto err;

    if (iterations == 0)
        iterations = bn_mr_min_checks(BN_num_bits(w));


    for (i = 0; i < iterations; ++i) {

        if (!BN_priv_rand_range_ex(b, w3, ctx)
                || !BN_add_word(b, 2))
            goto err;

        if (enhanced) {

            if (!BN_gcd(g, b, w, ctx))
                goto err;

            if (!BN_is_one(g)) {
                *status = BN_PRIMETEST_COMPOSITE_WITH_FACTOR;
                ret = 1;
                goto err;
            }
        }

        if (!BN_mod_exp_mont(z, b, m, w, ctx, mont))
            goto err;

        if (BN_is_one(z) || BN_cmp(z, w1) == 0)
            goto outer_loop;

        for (j = 1; j < a ; ++j) {

            if (!BN_copy(x, z) || !BN_mod_mul(z, x, x, w, ctx))
                goto err;

            if (BN_cmp(z, w1) == 0)
                goto outer_loop;

            if (BN_is_one(z))
                goto composite;
        }


        if (!BN_copy(x, z) || !BN_mod_mul(z, x, x, w, ctx))
            goto err;

        if (BN_is_one(z))
            goto composite;

        if (!BN_copy(x, z))
            goto err;
composite:
        if (enhanced) {

            if (!BN_sub_word(x, 1) || !BN_gcd(g, x, w, ctx))
                goto err;

            if (BN_is_one(g))
                *status = BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME;
            else
                *status = BN_PRIMETEST_COMPOSITE_WITH_FACTOR;
        } else {
            *status = BN_PRIMETEST_COMPOSITE;
        }
        ret = 1;
        goto err;
outer_loop: ;

        if (!BN_GENCB_call(cb, 1, i))
            goto err;
    }

    *status = BN_PRIMETEST_PROBABLY_PRIME;
    ret = 1;
err:
    BN_clear(g);
    BN_clear(w1);
    BN_clear(w3);
    BN_clear(x);
    BN_clear(m);
    BN_clear(z);
    BN_clear(b);
    BN_CTX_end(ctx);
    BN_MONT_CTX_free(mont);
    return ret;
}
