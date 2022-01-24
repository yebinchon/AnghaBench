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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 unsigned char BN_BITS ; 
 unsigned char BN_BITS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_BITS ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(int round)
{
    BN_CTX *ctx;
    unsigned char c;
    int ret = 0;
    BIGNUM *r_mont = NULL;
    BIGNUM *r_mont_const = NULL;
    BIGNUM *r_recp = NULL;
    BIGNUM *r_simple = NULL;
    BIGNUM *a = NULL;
    BIGNUM *b = NULL;
    BIGNUM *m = NULL;

    if (!FUNC15(ctx = FUNC1()))
        goto err;

    if (!FUNC15(r_mont = FUNC9())
        || !FUNC15(r_mont_const = FUNC9())
        || !FUNC15(r_recp = FUNC9())
        || !FUNC15(r_simple = FUNC9())
        || !FUNC15(a = FUNC9())
        || !FUNC15(b = FUNC9())
        || !FUNC15(m = FUNC9()))
        goto err;

    FUNC12(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    FUNC11(a, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY);

    FUNC12(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    FUNC11(b, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY);

    FUNC12(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    FUNC11(m, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD);

    if (!FUNC16(FUNC4(a, a, m, ctx))
        || !FUNC16(FUNC4(b, b, m, ctx))
        || !FUNC16(FUNC5(r_mont, a, b, m, ctx, NULL))
        || !FUNC16(FUNC7(r_recp, a, b, m, ctx))
        || !FUNC16(FUNC8(r_simple, a, b, m, ctx))
        || !FUNC16(FUNC6(r_mont_const, a, b, m, ctx, NULL)))
        goto err;

    if (!FUNC13(r_simple, r_mont)
        || !FUNC13(r_simple, r_recp)
        || !FUNC13(r_simple, r_mont_const)) {
        if (FUNC2(r_simple, r_mont) != 0)
            FUNC14("simple and mont results differ");
        if (FUNC2(r_simple, r_mont_const) != 0)
            FUNC14("simple and mont const time results differ");
        if (FUNC2(r_simple, r_recp) != 0)
            FUNC14("simple and recp results differ");

        FUNC10(a);
        FUNC10(b);
        FUNC10(m);
        FUNC10(r_simple);
        FUNC10(r_recp);
        FUNC10(r_mont);
        FUNC10(r_mont_const);
        goto err;
    }

    ret = 1;
 err:
    FUNC3(r_mont);
    FUNC3(r_mont_const);
    FUNC3(r_recp);
    FUNC3(r_simple);
    FUNC3(a);
    FUNC3(b);
    FUNC3(m);
    FUNC0(ctx);

    return ret;
}