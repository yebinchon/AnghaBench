
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef TYPE_1__ const BIGNUM ;


 int BN_CTX_end (int *) ;
 TYPE_1__ const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_F_BN_MOD_EXP_MONT_WORD ;
 int BN_MOD_MUL_WORD (TYPE_1__ const*,int,TYPE_1__ const*) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,TYPE_1__ const*,int *) ;
 int BN_R_CALLED_WITH_EVEN_MODULUS ;
 int BN_TO_MONTGOMERY_WORD (TYPE_1__ const*,int,int *) ;
 scalar_t__ BN_abs_is_word (TYPE_1__ const*,int) ;
 int BN_from_montgomery (TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 scalar_t__ BN_get_flags (TYPE_1__ const*,int ) ;
 scalar_t__ BN_is_bit_set (TYPE_1__ const*,int) ;
 int BN_is_odd (TYPE_1__ const*) ;
 int BN_mod_mul_montgomery (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int BN_num_bits (TYPE_1__ const*) ;
 int BN_one (TYPE_1__ const*) ;
 int BN_zero (TYPE_1__ const*) ;
 int BNerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int bn_check_top (TYPE_1__ const*) ;

int BN_mod_exp_mont_word(BIGNUM *rr, BN_ULONG a, const BIGNUM *p,
                         const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
    BN_MONT_CTX *mont = ((void*)0);
    int b, bits, ret = 0;
    int r_is_one;
    BN_ULONG w, next_w;
    BIGNUM *r, *t;
    BIGNUM *swap_tmp;
    if (BN_get_flags(p, BN_FLG_CONSTTIME) != 0
            || BN_get_flags(m, BN_FLG_CONSTTIME) != 0) {

        BNerr(BN_F_BN_MOD_EXP_MONT_WORD, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    bn_check_top(p);
    bn_check_top(m);

    if (!BN_is_odd(m)) {
        BNerr(BN_F_BN_MOD_EXP_MONT_WORD, BN_R_CALLED_WITH_EVEN_MODULUS);
        return 0;
    }
    if (m->top == 1)
        a %= m->d[0];

    bits = BN_num_bits(p);
    if (bits == 0) {

        if (BN_abs_is_word(m, 1)) {
            ret = 1;
            BN_zero(rr);
        } else {
            ret = BN_one(rr);
        }
        return ret;
    }
    if (a == 0) {
        BN_zero(rr);
        ret = 1;
        return ret;
    }

    BN_CTX_start(ctx);
    r = BN_CTX_get(ctx);
    t = BN_CTX_get(ctx);
    if (t == ((void*)0))
        goto err;

    if (in_mont != ((void*)0))
        mont = in_mont;
    else {
        if ((mont = BN_MONT_CTX_new()) == ((void*)0))
            goto err;
        if (!BN_MONT_CTX_set(mont, m, ctx))
            goto err;
    }

    r_is_one = 1;




    w = a;
    for (b = bits - 2; b >= 0; b--) {

        next_w = w * w;
        if ((next_w / w) != w) {
            if (r_is_one) {
                if (!(BN_set_word(r, (w)) && BN_to_montgomery(r, r, (mont), ctx)))
                    goto err;
                r_is_one = 0;
            } else {
                if (!(BN_mul_word(r, (w)) && ( (BN_mod(t, r, m, ctx) && (swap_tmp = r, r = t, t = swap_tmp, 1)))))
                    goto err;
            }
            next_w = 1;
        }
        w = next_w;
        if (!r_is_one) {
            if (!BN_mod_mul_montgomery(r, r, r, mont, ctx))
                goto err;
        }


        if (BN_is_bit_set(p, b)) {
            next_w = w * a;
            if ((next_w / a) != w) {
                if (r_is_one) {
                    if (!(BN_set_word(r, (w)) && BN_to_montgomery(r, r, (mont), ctx)))
                        goto err;
                    r_is_one = 0;
                } else {
                    if (!(BN_mul_word(r, (w)) && ( (BN_mod(t, r, m, ctx) && (swap_tmp = r, r = t, t = swap_tmp, 1)))))
                        goto err;
                }
                next_w = a;
            }
            w = next_w;
        }
    }


    if (w != 1) {
        if (r_is_one) {
            if (!(BN_set_word(r, (w)) && BN_to_montgomery(r, r, (mont), ctx)))
                goto err;
            r_is_one = 0;
        } else {
            if (!(BN_mul_word(r, (w)) && ( (BN_mod(t, r, m, ctx) && (swap_tmp = r, r = t, t = swap_tmp, 1)))))
                goto err;
        }
    }

    if (r_is_one) {
        if (!BN_one(rr))
            goto err;
    } else {
        if (!BN_from_montgomery(rr, r, mont, ctx))
            goto err;
    }
    ret = 1;
 err:
    if (in_mont == ((void*)0))
        BN_MONT_CTX_free(mont);
    BN_CTX_end(ctx);
    bn_check_top(rr);
    return ret;
}
