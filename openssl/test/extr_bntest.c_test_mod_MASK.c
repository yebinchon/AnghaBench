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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUM0 ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL, *d = NULL, *e = NULL;
    int st = 0, i;

    if (!FUNC8(a = FUNC4())
            || !FUNC8(b = FUNC4())
            || !FUNC8(c = FUNC4())
            || !FUNC8(d = FUNC4())
            || !FUNC8(e = FUNC4()))
        goto err;

    if (!(FUNC9(FUNC0(a, 1024, 0, 0))))
        goto err;
    for (i = 0; i < NUM0; i++) {
        if (!(FUNC9(FUNC0(b, 450 + i * 10, 0, 0))))
            goto err;
        FUNC5(a, FUNC10());
        FUNC5(b, FUNC10());
        if (!(FUNC9(FUNC3(c, a, b, ctx))
                && FUNC9(FUNC1(d, e, a, b, ctx))
                && FUNC9(FUNC6(e, e, c))
                && FUNC7(e)))
            goto err;
    }
    st = 1;
 err:
    FUNC2(a);
    FUNC2(b);
    FUNC2(c);
    FUNC2(d);
    FUNC2(e);
    return st;
}