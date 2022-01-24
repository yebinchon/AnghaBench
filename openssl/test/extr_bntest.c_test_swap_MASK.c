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
 int BN_BITS2 ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL, *d = NULL;
    int top, cond, st = 0;

    if (!FUNC10(a = FUNC5())
            || !FUNC10(b = FUNC5())
            || !FUNC10(c = FUNC5())
            || !FUNC10(d = FUNC5()))
        goto err;

    if (!(FUNC11(FUNC0(a, 1024, 1, 0))
            && FUNC11(FUNC0(b, 1024, 1, 0))
            && FUNC10(FUNC2(c, a))
            && FUNC10(FUNC2(d, b))))
        goto err;
    top = FUNC6(a) / BN_BITS2;

    /* regular swap */
    FUNC8(a, b);
    if (!FUNC12("swap", a, d)
            || !FUNC12("swap", b, c))
        goto err;

    /* conditional swap: true */
    cond = 1;
    FUNC1(cond, a, b, top);
    if (!FUNC12("cswap true", a, c)
            || !FUNC12("cswap true", b, d))
        goto err;

    /* conditional swap: false */
    cond = 0;
    FUNC1(cond, a, b, top);
    if (!FUNC12("cswap false", a, c)
            || !FUNC12("cswap false", b, d))
        goto err;

    /* same tests but checking flag swap */
    FUNC7(a, BN_FLG_CONSTTIME);

    FUNC8(a, b);
    if (!FUNC12("swap, flags", a, d)
            || !FUNC12("swap, flags", b, c)
            || !FUNC11(FUNC4(b, BN_FLG_CONSTTIME))
            || !FUNC9(FUNC4(a, BN_FLG_CONSTTIME)))
        goto err;

    cond = 1;
    FUNC1(cond, a, b, top);
    if (!FUNC12("cswap true, flags", a, c)
            || !FUNC12("cswap true, flags", b, d)
            || !FUNC11(FUNC4(a, BN_FLG_CONSTTIME))
            || !FUNC9(FUNC4(b, BN_FLG_CONSTTIME)))
        goto err;

    cond = 0;
    FUNC1(cond, a, b, top);
    if (!FUNC12("cswap false, flags", a, c)
            || !FUNC12("cswap false, flags", b, d)
            || !FUNC11(FUNC4(a, BN_FLG_CONSTTIME))
            || !FUNC9(FUNC4(b, BN_FLG_CONSTTIME)))
        goto err;

    st = 1;
 err:
    FUNC3(a);
    FUNC3(b);
    FUNC3(c);
    FUNC3(d);
    return st;
}