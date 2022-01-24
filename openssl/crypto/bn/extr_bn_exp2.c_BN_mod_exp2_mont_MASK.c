#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int* d; scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_F_BN_MOD_EXP2_MONT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_R_CALLED_WITH_EVEN_MODULUS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__ const*) ; 
 int FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_1__ const*,TYPE_1__ const*) ; 
 TYPE_1__ const* FUNC15 () ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__ const*) ; 

int FUNC20(BIGNUM *rr, const BIGNUM *a1, const BIGNUM *p1,
                     const BIGNUM *a2, const BIGNUM *p2, const BIGNUM *m,
                     BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
    int i, j, bits, b, bits1, bits2, ret =
        0, wpos1, wpos2, window1, window2, wvalue1, wvalue2;
    int r_is_one = 1;
    BIGNUM *d, *r;
    const BIGNUM *a_mod_m;
    /* Tables of variables obtained from 'ctx' */
    BIGNUM *val1[TABLE_SIZE], *val2[TABLE_SIZE];
    BN_MONT_CTX *mont = NULL;

    FUNC19(a1);
    FUNC19(p1);
    FUNC19(a2);
    FUNC19(p2);
    FUNC19(m);

    if (!(m->d[0] & 1)) {
        FUNC18(BN_F_BN_MOD_EXP2_MONT, BN_R_CALLED_WITH_EVEN_MODULUS);
        return 0;
    }
    bits1 = FUNC11(p1);
    bits2 = FUNC11(p2);
    if ((bits1 == 0) && (bits2 == 0)) {
        ret = FUNC12(rr);
        return ret;
    }

    bits = (bits1 > bits2) ? bits1 : bits2;

    FUNC2(ctx);
    d = FUNC1(ctx);
    r = FUNC1(ctx);
    val1[0] = FUNC1(ctx);
    val2[0] = FUNC1(ctx);
    if (val2[0] == NULL)
        goto err;

    if (in_mont != NULL)
        mont = in_mont;
    else {
        if ((mont = FUNC4()) == NULL)
            goto err;
        if (!FUNC5(mont, m, ctx))
            goto err;
    }

    window1 = FUNC16(bits1);
    window2 = FUNC16(bits2);

    /*
     * Build table for a1:   val1[i] := a1^(2*i + 1) mod m  for i = 0 .. 2^(window1-1)
     */
    if (a1->neg || FUNC14(a1, m) >= 0) {
        if (!FUNC9(val1[0], a1, m, ctx))
            goto err;
        a_mod_m = val1[0];
    } else
        a_mod_m = a1;
    if (FUNC8(a_mod_m)) {
        FUNC17(rr);
        ret = 1;
        goto err;
    }

    if (!FUNC13(val1[0], a_mod_m, mont, ctx))
        goto err;
    if (window1 > 1) {
        if (!FUNC10(d, val1[0], val1[0], mont, ctx))
            goto err;

        j = 1 << (window1 - 1);
        for (i = 1; i < j; i++) {
            if (((val1[i] = FUNC1(ctx)) == NULL) ||
                !FUNC10(val1[i], val1[i - 1], d, mont, ctx))
                goto err;
        }
    }

    /*
     * Build table for a2:   val2[i] := a2^(2*i + 1) mod m  for i = 0 .. 2^(window2-1)
     */
    if (a2->neg || FUNC14(a2, m) >= 0) {
        if (!FUNC9(val2[0], a2, m, ctx))
            goto err;
        a_mod_m = val2[0];
    } else
        a_mod_m = a2;
    if (FUNC8(a_mod_m)) {
        FUNC17(rr);
        ret = 1;
        goto err;
    }
    if (!FUNC13(val2[0], a_mod_m, mont, ctx))
        goto err;
    if (window2 > 1) {
        if (!FUNC10(d, val2[0], val2[0], mont, ctx))
            goto err;

        j = 1 << (window2 - 1);
        for (i = 1; i < j; i++) {
            if (((val2[i] = FUNC1(ctx)) == NULL) ||
                !FUNC10(val2[i], val2[i - 1], d, mont, ctx))
                goto err;
        }
    }

    /* Now compute the power product, using independent windows. */
    r_is_one = 1;
    wvalue1 = 0;                /* The 'value' of the first window */
    wvalue2 = 0;                /* The 'value' of the second window */
    wpos1 = 0;                  /* If wvalue1 > 0, the bottom bit of the
                                 * first window */
    wpos2 = 0;                  /* If wvalue2 > 0, the bottom bit of the
                                 * second window */

    if (!FUNC13(r, FUNC15(), mont, ctx))
        goto err;
    for (b = bits - 1; b >= 0; b--) {
        if (!r_is_one) {
            if (!FUNC10(r, r, r, mont, ctx))
                goto err;
        }

        if (!wvalue1)
            if (FUNC7(p1, b)) {
                /*
                 * consider bits b-window1+1 .. b for this window
                 */
                i = b - window1 + 1;
                while (!FUNC7(p1, i)) /* works for i<0 */
                    i++;
                wpos1 = i;
                wvalue1 = 1;
                for (i = b - 1; i >= wpos1; i--) {
                    wvalue1 <<= 1;
                    if (FUNC7(p1, i))
                        wvalue1++;
                }
            }

        if (!wvalue2)
            if (FUNC7(p2, b)) {
                /*
                 * consider bits b-window2+1 .. b for this window
                 */
                i = b - window2 + 1;
                while (!FUNC7(p2, i))
                    i++;
                wpos2 = i;
                wvalue2 = 1;
                for (i = b - 1; i >= wpos2; i--) {
                    wvalue2 <<= 1;
                    if (FUNC7(p2, i))
                        wvalue2++;
                }
            }

        if (wvalue1 && b == wpos1) {
            /* wvalue1 is odd and < 2^window1 */
            if (!FUNC10(r, r, val1[wvalue1 >> 1], mont, ctx))
                goto err;
            wvalue1 = 0;
            r_is_one = 0;
        }

        if (wvalue2 && b == wpos2) {
            /* wvalue2 is odd and < 2^window2 */
            if (!FUNC10(r, r, val2[wvalue2 >> 1], mont, ctx))
                goto err;
            wvalue2 = 0;
            r_is_one = 0;
        }
    }
    if (!FUNC6(rr, r, mont, ctx))
        goto err;
    ret = 1;
 err:
    if (in_mont == NULL)
        FUNC3(mont);
    FUNC0(ctx);
    FUNC19(rr);
    return ret;
}