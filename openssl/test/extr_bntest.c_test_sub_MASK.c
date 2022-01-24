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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUM0 ; 
 int NUM1 ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL;
    int i, st = 0;

    if (!FUNC11(a = FUNC5())
            || !FUNC11(b = FUNC5())
            || !FUNC11(c = FUNC5()))
        goto err;

    for (i = 0; i < NUM0 + NUM1; i++) {
        if (i < NUM1) {
            if (!(FUNC12(FUNC2(a, 512, 0, 0)))
                    && FUNC11(FUNC3(b, a))
                    && FUNC10(FUNC6(a, i), 0)
                    && FUNC12(FUNC1(b, i)))
                goto err;
        } else {
            if (!FUNC12(FUNC2(b, 400 + i - NUM1, 0, 0)))
                goto err;
            FUNC7(a, FUNC13());
            FUNC7(b, FUNC13());
        }
        if (!(FUNC12(FUNC8(c, a, b))
                && FUNC12(FUNC0(c, c, b))
                && FUNC12(FUNC8(c, c, a))
                && FUNC9(c)))
            goto err;
    }
    st = 1;
 err:
    FUNC4(a);
    FUNC4(b);
    FUNC4(c);
    return st;
}