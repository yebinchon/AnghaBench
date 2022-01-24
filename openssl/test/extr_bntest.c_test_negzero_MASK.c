#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 

__attribute__((used)) static int FUNC13(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL, *d = NULL;
    BIGNUM *numerator = NULL, *denominator = NULL;
    int consttime, st = 0;

    if (!FUNC11(a = FUNC4())
            || !FUNC11(b = FUNC4())
            || !FUNC11(c = FUNC4())
            || !FUNC11(d = FUNC4()))
        goto err;

    /* Test that BN_mul never gives negative zero. */
    if (!FUNC12(FUNC7(a, 1)))
        goto err;
    FUNC6(a, 1);
    FUNC8(b);
    if (!FUNC12(FUNC3(c, a, b, ctx)))
        goto err;
    if (!FUNC9(c)
            || !FUNC10(c))
        goto err;

    for (consttime = 0; consttime < 2; consttime++) {
        if (!FUNC11(numerator = FUNC4())
                || !FUNC11(denominator = FUNC4()))
            goto err;
        if (consttime) {
            FUNC5(numerator, BN_FLG_CONSTTIME);
            FUNC5(denominator, BN_FLG_CONSTTIME);
        }
        /* Test that BN_div never gives negative zero in the quotient. */
        if (!FUNC12(FUNC7(numerator, 1))
                || !FUNC12(FUNC7(denominator, 2)))
            goto err;
        FUNC6(numerator, 1);
        if (!FUNC12(FUNC0(a, b, numerator, denominator, ctx))
                || !FUNC9(a)
                || !FUNC10(a))
            goto err;

        /* Test that BN_div never gives negative zero in the remainder. */
        if (!FUNC12(FUNC7(denominator, 1))
                || !FUNC12(FUNC0(a, b, numerator, denominator, ctx))
                || !FUNC9(b)
                || !FUNC10(b))
            goto err;
        FUNC1(numerator);
        FUNC1(denominator);
        numerator = denominator = NULL;
    }

    /* Test that BN_set_negative will not produce a negative zero. */
    FUNC8(a);
    FUNC6(a, 1);
    if (FUNC2(a))
        goto err;
    st = 1;

 err:
    FUNC1(a);
    FUNC1(b);
    FUNC1(c);
    FUNC1(d);
    FUNC1(numerator);
    FUNC1(denominator);
    return st;
}