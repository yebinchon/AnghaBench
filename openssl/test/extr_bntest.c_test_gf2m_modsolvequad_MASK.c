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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int NUM0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  p1 ; 

__attribute__((used)) static int FUNC13(void)
{
    BIGNUM *a = NULL, *b[2] = {NULL,NULL}, *c = NULL, *d = NULL;
    BIGNUM *e = NULL;
    int i, j, s = 0, t, st = 0;

    if (!FUNC11(a = FUNC7())
            || !FUNC11(b[0] = FUNC7())
            || !FUNC11(b[1] = FUNC7())
            || !FUNC11(c = FUNC7())
            || !FUNC11(d = FUNC7())
            || !FUNC11(e = FUNC7()))
        goto err;

    if (!(FUNC12(FUNC1(p0, b[0]))
            && FUNC12(FUNC1(p1, b[1]))))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!FUNC12(FUNC5(a, 512, 0, 0)))
            goto err;
        for (j = 0; j < 2; j++) {
            t = FUNC3(c, a, b[j], ctx);
            if (t) {
                s++;
                if (!(FUNC12(FUNC4(d, c, b[j], ctx))
                        && FUNC12(FUNC0(d, c, d))
                        && FUNC12(FUNC2(e, a, b[j]))
                        && FUNC12(FUNC0(e, e, d))
                        /*
                         * Test that solution of quadratic c
                         * satisfies c^2 + c = a.
                         */
                        && FUNC8(e)))
                    goto err;
            }
        }
    }
    if (!FUNC10(s, 0)) {
        FUNC9("%d tests found no roots; probably an error", NUM0);
        goto err;
    }
    st = 1;
 err:
    FUNC6(a);
    FUNC6(b[0]);
    FUNC6(b[1]);
    FUNC6(c);
    FUNC6(d);
    FUNC6(e);
    return st;
}