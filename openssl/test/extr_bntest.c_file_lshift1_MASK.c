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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC14(STANZA *s)
{
    BIGNUM *a = NULL, *lshift1 = NULL, *zero = NULL, *ret = NULL;
    BIGNUM *two = NULL, *remainder = NULL;
    int st = 0;

    if (!FUNC10(a = FUNC13(s, "A"))
            || !FUNC10(lshift1 = FUNC13(s, "LShift1"))
            || !FUNC10(zero = FUNC5())
            || !FUNC10(ret = FUNC5())
            || !FUNC10(two = FUNC5())
            || !FUNC10(remainder = FUNC5()))
        goto err;

    FUNC9(zero);

    if (!FUNC11(FUNC8(two, 2))
            || !FUNC11(FUNC0(ret, a, a))
            || !FUNC12("A + A", lshift1, ret)
            || !FUNC11(FUNC4(ret, a, two, ctx))
            || !FUNC12("A * 2", lshift1, ret)
            || !FUNC11(FUNC1(ret, remainder, lshift1, two, ctx))
            || !FUNC12("LShift1 / 2", a, ret)
            || !FUNC12("LShift1 % 2", zero, remainder)
            || !FUNC11(FUNC3(ret, a))
            || !FUNC12("A << 1", lshift1, ret)
            || !FUNC11(FUNC6(ret, lshift1))
            || !FUNC12("LShift >> 1", a, ret)
            || !FUNC11(FUNC6(ret, lshift1))
            || !FUNC12("LShift >> 1", a, ret))
        goto err;

    /* Set the LSB to 1 and test rshift1 again. */
    if (!FUNC11(FUNC7(lshift1, 0))
            || !FUNC11(FUNC1(ret, NULL /* rem */ , lshift1, two, ctx))
            || !FUNC12("(LShift1 | 1) / 2", a, ret)
            || !FUNC11(FUNC6(ret, lshift1))
            || !FUNC12("(LShift | 1) >> 1", a, ret))
        goto err;

    st = 1;
 err:
    FUNC2(a);
    FUNC2(lshift1);
    FUNC2(zero);
    FUNC2(ret);
    FUNC2(two);
    FUNC2(remainder);

    return st;
}