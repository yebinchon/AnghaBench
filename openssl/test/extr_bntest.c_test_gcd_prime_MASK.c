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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int NUM0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 

__attribute__((used)) static int FUNC7(void)
{
    BIGNUM *a = NULL, *b = NULL, *gcd = NULL;
    int i, st = 0;

    if (!FUNC5(a = FUNC4())
            || !FUNC5(b = FUNC4())
            || !FUNC5(gcd = FUNC4()))
        goto err;

    if (!FUNC6(FUNC2(a, 1024, 0, NULL, NULL, NULL)))
            goto err;
    for (i = 0; i < NUM0; i++) {
        if (!FUNC6(FUNC2(b, 1024, 0,
                                            NULL, NULL, NULL))
                || !FUNC6(FUNC1(gcd, a, b, ctx))
                || !FUNC6(FUNC3(gcd)))
            goto err;
    }

    st = 1;
 err:
    FUNC0(a);
    FUNC0(b);
    FUNC0(gcd);
    return st;
}