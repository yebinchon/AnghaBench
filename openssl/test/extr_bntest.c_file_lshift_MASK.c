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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,char*) ; 

__attribute__((used)) static int FUNC9(STANZA *s)
{
    BIGNUM *a = NULL, *lshift = NULL, *ret = NULL;
    int n = 0, st = 0;

    if (!FUNC4(a = FUNC7(s, "A"))
            || !FUNC4(lshift = FUNC7(s, "LShift"))
            || !FUNC4(ret = FUNC2())
            || !FUNC8(s, &n, "N"))
        goto err;

    if (!FUNC5(FUNC1(ret, a, n))
            || !FUNC6("A << N", lshift, ret)
            || !FUNC5(FUNC3(ret, lshift, n))
            || !FUNC6("A >> N", a, ret))
        goto err;

    st = 1;
 err:
    FUNC0(a);
    FUNC0(lshift);
    FUNC0(ret);
    return st;
}