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
typedef  int /*<<< orphan*/  STANZA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC18(STANZA *s)
{
    BIGNUM *a = NULL, *square = NULL, *zero = NULL, *ret = NULL;
    BIGNUM *remainder = NULL, *tmp = NULL;
    int st = 0;

    if (!FUNC14(a = FUNC17(s, "A"))
            || !FUNC14(square = FUNC17(s, "Square"))
            || !FUNC14(zero = FUNC5())
            || !FUNC14(ret = FUNC5())
            || !FUNC14(remainder = FUNC5()))
        goto err;

    FUNC10(zero);
    if (!FUNC15(FUNC7(ret, a, ctx))
            || !FUNC16("A^2", square, ret)
            || !FUNC15(FUNC4(ret, a, a, ctx))
            || !FUNC16("A * A", square, ret)
            || !FUNC15(FUNC2(ret, remainder, square, a, ctx))
            || !FUNC16("Square / A", a, ret)
            || !FUNC16("Square % A", zero, remainder))
        goto err;

#if HAVE_BN_SQRT
    BN_set_negative(a, 0);
    if (!TEST_true(BN_sqrt(ret, square, ctx))
            || !equalBN("sqrt(Square)", a, ret))
        goto err;

    /* BN_sqrt should fail on non-squares and negative numbers. */
    if (!TEST_BN_eq_zero(square)) {
        if (!TEST_ptr(tmp = BN_new())
                || !TEST_true(BN_copy(tmp, square)))
            goto err;
        BN_set_negative(tmp, 1);

        if (!TEST_int_eq(BN_sqrt(ret, tmp, ctx), 0))
            goto err;
        ERR_clear_error();

        BN_set_negative(tmp, 0);
        if (BN_add(tmp, tmp, BN_value_one()))
            goto err;
        if (!TEST_int_eq(BN_sqrt(ret, tmp, ctx)))
            goto err;
        ERR_clear_error();
    }
#endif

    st = 1;
 err:
    FUNC3(a);
    FUNC3(square);
    FUNC3(zero);
    FUNC3(ret);
    FUNC3(remainder);
    FUNC3(tmp);
    return st;
}