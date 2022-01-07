
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_add (int const*,int const*,int const*) ;
 scalar_t__ BN_check_prime (int const*,int *,int *) ;
 int BN_clear (int const*) ;
 int * BN_copy (int const*,int const*) ;
 scalar_t__ BN_gcd (int const*,int const*,int const*,int *) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_one (int const*) ;
 int BN_lshift (int const*,int const*,int) ;
 scalar_t__ BN_lshift1 (int const*,int const*) ;
 scalar_t__ BN_mod_inverse (int const*,int const*,int const*,int *) ;
 int BN_mod_sub (int const*,int const*,int const*,int const*,int *) ;
 scalar_t__ BN_mul (int const*,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_priv_rand_range_ex (int const*,int const*,int *) ;
 scalar_t__ BN_sub (int const*,int const*,int const*) ;
 int BN_sub_word (int const*,int) ;
 int const* BN_value_one () ;
 int const bn_inv_sqrt_2 ;

int bn_rsa_fips186_4_derive_prime(BIGNUM *Y, BIGNUM *X, const BIGNUM *Xin,
                                  const BIGNUM *r1, const BIGNUM *r2, int nlen,
                                  const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;
    int i, imax;
    int bits = nlen >> 1;
    BIGNUM *tmp, *R, *r1r2x2, *y1, *r1x2;
    BIGNUM *base, *range;

    BN_CTX_start(ctx);

    base = BN_CTX_get(ctx);
    range = BN_CTX_get(ctx);
    R = BN_CTX_get(ctx);
    tmp = BN_CTX_get(ctx);
    r1r2x2 = BN_CTX_get(ctx);
    y1 = BN_CTX_get(ctx);
    r1x2 = BN_CTX_get(ctx);
    if (r1x2 == ((void*)0))
        goto err;

    if (Xin != ((void*)0) && BN_copy(X, Xin) == ((void*)0))
        goto err;
    if (Xin == ((void*)0)) {
        if (bits < BN_num_bits(&bn_inv_sqrt_2))
            goto err;
        if (!BN_lshift(base, &bn_inv_sqrt_2, bits - BN_num_bits(&bn_inv_sqrt_2))
            || !BN_lshift(range, BN_value_one(), bits)
            || !BN_sub(range, range, base))
            goto err;
    }

    if (!(BN_lshift1(r1x2, r1)

            && BN_gcd(tmp, r1x2, r2, ctx)
            && BN_is_one(tmp)

            && BN_mod_inverse(R, r2, r1x2, ctx)
            && BN_mul(R, R, r2, ctx)
            && BN_mod_inverse(tmp, r1x2, r2, ctx)
            && BN_mul(tmp, tmp, r1x2, ctx)
            && BN_sub(R, R, tmp)

            && BN_mul(r1r2x2, r1x2, r2, ctx)))
        goto err;

    if (BN_is_negative(R) && !BN_add(R, R, r1r2x2))
        goto err;

    imax = 5 * bits;
    for (;;) {
        if (Xin == ((void*)0)) {




            if (!BN_priv_rand_range_ex(X, range, ctx) || !BN_add(X, X, base))
                goto end;
        }

        if (!BN_mod_sub(Y, R, X, r1r2x2, ctx) || !BN_add(Y, Y, X))
            goto err;

        i = 0;
        for (;;) {

            if (BN_num_bits(Y) > bits) {
                if (Xin == ((void*)0))
                    break;
                else
                    goto err;
            }
            BN_GENCB_call(cb, 0, 2);


            if (BN_copy(y1, Y) == ((void*)0)
                    || !BN_sub_word(y1, 1)
                    || !BN_gcd(tmp, y1, e, ctx))
                goto err;
            if (BN_is_one(tmp) && BN_check_prime(Y, ctx, cb))
                goto end;

            if (++i >= imax || !BN_add(Y, Y, r1r2x2))
                goto err;
        }
    }
end:
    ret = 1;
    BN_GENCB_call(cb, 3, 0);
err:
    BN_clear(y1);
    BN_CTX_end(ctx);
    return ret;
}
