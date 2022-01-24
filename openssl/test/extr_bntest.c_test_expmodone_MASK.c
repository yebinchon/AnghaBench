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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void)
{
    int ret = 0, i;
    BIGNUM *r = FUNC7();
    BIGNUM *a = FUNC7();
    BIGNUM *p = FUNC7();
    BIGNUM *m = FUNC7();

    if (!FUNC11(r)
            || !FUNC11(a)
            || !FUNC11(p)
            || !FUNC11(p)
            || !FUNC11(m)
            || !FUNC12(FUNC9(a, 1))
            || !FUNC12(FUNC9(p, 0))
            || !FUNC12(FUNC9(m, 1)))
        goto err;

    /* Calculate r = 1 ^ 0 mod 1, and check the result is always 0 */
    for (i = 0; i < 2; i++) {
        if (!FUNC12(FUNC1(r, a, p, m, NULL))
                || !FUNC10(r)
                || !FUNC12(FUNC2(r, a, p, m, NULL, NULL))
                || !FUNC10(r)
                || !FUNC12(FUNC3(r, a, p, m, NULL, NULL))
                || !FUNC10(r)
                || !FUNC12(FUNC4(r, 1, p, m, NULL, NULL))
                || !FUNC10(r)
                || !FUNC12(FUNC6(r, a, p, m, NULL))
                || !FUNC10(r)
                || !FUNC12(FUNC5(r, a, p, m, NULL))
                || !FUNC10(r))
            goto err;
        /* Repeat for r = 1 ^ 0 mod -1 */
        if (i == 0)
            FUNC8(m, 1);
    }

    ret = 1;
 err:
    FUNC0(r);
    FUNC0(a);
    FUNC0(p);
    FUNC0(m);
    return ret;
}