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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int NUM0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  p1 ; 

__attribute__((used)) static int FUNC11(void)
{
    BIGNUM *a = NULL, *b[2] = {NULL,NULL}, *c = NULL, *d = NULL;
    BIGNUM *e = NULL, *f = NULL;
    int i, j, st = 0;

    if (!FUNC9(a = FUNC7())
            || !FUNC9(b[0] = FUNC7())
            || !FUNC9(b[1] = FUNC7())
            || !FUNC9(c = FUNC7())
            || !FUNC9(d = FUNC7())
            || !FUNC9(e = FUNC7())
            || !FUNC9(f = FUNC7()))
        goto err;

    if (!(FUNC10(FUNC1(p0, b[0]))
            && FUNC10(FUNC1(p1, b[1]))))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!(FUNC10(FUNC5(a, 512, 0, 0))
                && FUNC10(FUNC5(c, 512, 0, 0))
                && FUNC10(FUNC5(d, 512, 0, 0))))
            goto err;
        for (j = 0; j < 2; j++) {
            if (!(FUNC10(FUNC2(e, a, c, b[j], ctx))
                    && FUNC10(FUNC2(f, a, d, b[j], ctx))
                    && FUNC10(FUNC3(e, e, f, b[j], ctx))
                    && FUNC10(FUNC4(f, c, d))
                    && FUNC10(FUNC2(f, a, f, b[j], ctx))
                    && FUNC10(FUNC0(f, e, f))
                    /* Test that a^(c+d)=a^c*a^d. */
                    && FUNC8(f)))
                goto err;
        }
    }
    st = 1;
 err:
    FUNC6(a);
    FUNC6(b[0]);
    FUNC6(b[1]);
    FUNC6(c);
    FUNC6(d);
    FUNC6(e);
    FUNC6(f);
    return st;
}