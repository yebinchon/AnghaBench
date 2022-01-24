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
typedef  int /*<<< orphan*/  STANZA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(STANZA *s)
{
    BIGNUM *a = NULL, *p = NULL, *mod_sqrt = NULL, *ret = NULL, *ret2 = NULL;
    int st = 0;

    if (!FUNC5(a = FUNC8(s, "A"))
            || !FUNC5(p = FUNC8(s, "P"))
            || !FUNC5(mod_sqrt = FUNC8(s, "ModSqrt"))
            || !FUNC5(ret = FUNC3())
            || !FUNC5(ret2 = FUNC3()))
        goto err;

    /* There are two possible answers. */
    if (!FUNC6(FUNC2(ret, a, p, ctx))
            || !FUNC6(FUNC4(ret2, p, ret)))
        goto err;

    /* The first condition should NOT be a test. */
    if (FUNC0(ret2, mod_sqrt) != 0
            && !FUNC7("sqrt(A) (mod P)", mod_sqrt, ret))
        goto err;

    st = 1;
 err:
    FUNC1(a);
    FUNC1(p);
    FUNC1(mod_sqrt);
    FUNC1(ret);
    FUNC1(ret2);
    return st;
}