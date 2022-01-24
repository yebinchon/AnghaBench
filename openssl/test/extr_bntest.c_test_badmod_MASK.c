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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 

__attribute__((used)) static int FUNC17(void)
{
    BIGNUM *a = NULL, *b = NULL, *zero = NULL;
    BN_MONT_CTX *mont = NULL;
    int st = 0;

    if (!FUNC15(a = FUNC9())
            || !FUNC15(b = FUNC9())
            || !FUNC15(zero = FUNC9())
            || !FUNC15(mont = FUNC1()))
        goto err;
    FUNC12(zero);

    if (!FUNC14(FUNC3(a, b, FUNC11(), zero, ctx)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC8(a, FUNC11(), FUNC11(), zero, ctx)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC5(a, FUNC11(), FUNC11(), zero, ctx)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC6(a, FUNC11(), FUNC11(),
                                    zero, ctx, NULL)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC7(a, FUNC11(), FUNC11(),
                                              zero, ctx, NULL)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC2(mont, zero, ctx)))
        goto err;
    FUNC13();

    /* Some operations also may not be used with an even modulus. */
    if (!FUNC16(FUNC10(b, 16)))
        goto err;

    if (!FUNC14(FUNC2(mont, b, ctx)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC6(a, FUNC11(), FUNC11(),
                                    b, ctx, NULL)))
        goto err;
    FUNC13();

    if (!FUNC14(FUNC7(a, FUNC11(), FUNC11(),
                                              b, ctx, NULL)))
        goto err;
    FUNC13();

    st = 1;
 err:
    FUNC4(a);
    FUNC4(b);
    FUNC4(zero);
    FUNC0(mont);
    return st;
}