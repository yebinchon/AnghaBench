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
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
    BIGNUM *bn = NULL;
    int st = 0;

    if (!FUNC6(bn = FUNC1()))
        return 0;

    /* Test BN_rand for degenerate cases with |top| and |bottom| parameters. */
    if (!FUNC5(FUNC2(bn, 0, 0 /* top */ , 0 /* bottom */ ))
            || !FUNC5(FUNC2(bn, 0, 1 /* top */ , 1 /* bottom */ ))
            || !FUNC7(FUNC2(bn, 1, 0 /* top */ , 0 /* bottom */ ))
            || !FUNC3(bn)
            || !FUNC5(FUNC2(bn, 1, 1 /* top */ , 0 /* bottom */ ))
            || !FUNC7(FUNC2(bn, 1, -1 /* top */ , 1 /* bottom */ ))
            || !FUNC3(bn)
            || !FUNC7(FUNC2(bn, 2, 1 /* top */ , 0 /* bottom */ ))
            || !FUNC4(bn, 3))
        goto err;

    st = 1;
 err:
    FUNC0(bn);
    return st;
}