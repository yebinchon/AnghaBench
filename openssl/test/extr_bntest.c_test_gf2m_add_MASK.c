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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int NUM0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL;
    int i, st = 0;

    if (!FUNC10(a = FUNC4())
            || !FUNC10(b = FUNC4())
            || !FUNC10(c = FUNC4()))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!(FUNC11(FUNC5(a, 512, 0, 0))
                && FUNC10(FUNC1(b, FUNC7()))))
            goto err;
        FUNC6(a, FUNC12());
        FUNC6(b, FUNC12());
        if (!(FUNC11(FUNC0(c, a, b))
                /* Test that two added values have the correct parity. */
                && FUNC9((FUNC3(a) && FUNC3(c))
                        || (!FUNC3(a) && !FUNC3(c)))))
            goto err;
        if (!(FUNC11(FUNC0(c, c, c))
                /* Test that c + c = 0. */
                && FUNC8(c)))
            goto err;
    }
    st = 1;
 err:
    FUNC2(a);
    FUNC2(b);
    FUNC2(c);
    return st;
}