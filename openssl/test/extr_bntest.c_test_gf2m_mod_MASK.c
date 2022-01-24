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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int NUM0 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  p1 ; 

__attribute__((used)) static int FUNC9(void)
{
    BIGNUM *a = NULL, *b[2] = {NULL,NULL}, *c = NULL, *d = NULL, *e = NULL;
    int i, j, st = 0;

    if (!FUNC7(a = FUNC5())
            || !FUNC7(b[0] = FUNC5())
            || !FUNC7(b[1] = FUNC5())
            || !FUNC7(c = FUNC5())
            || !FUNC7(d = FUNC5())
            || !FUNC7(e = FUNC5()))
        goto err;

    if (!(FUNC8(FUNC1(p0, b[0]))
            && FUNC8(FUNC1(p1, b[1]))))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!FUNC8(FUNC3(a, 1024, 0, 0)))
            goto err;
        for (j = 0; j < 2; j++) {
            if (!(FUNC8(FUNC2(c, a, b[j]))
                    && FUNC8(FUNC0(d, a, c))
                    && FUNC8(FUNC2(e, d, b[j]))
                    /* Test that a + (a mod p) mod p == 0. */
                    && FUNC6(e)))
                goto err;
        }
    }
    st = 1;
 err:
    FUNC4(a);
    FUNC4(b[0]);
    FUNC4(b[1]);
    FUNC4(c);
    FUNC4(d);
    FUNC4(e);
    return st;
}