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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(STANZA *s)
{
    BIGNUM *a = NULL, *b = NULL, *gcd = NULL, *ret = NULL;
    int st = 0;

    if (!FUNC3(a = FUNC6(s, "A"))
            || !FUNC3(b = FUNC6(s, "B"))
            || !FUNC3(gcd = FUNC6(s, "GCD"))
            || !FUNC3(ret = FUNC2()))
        goto err;

    if (!FUNC4(FUNC1(ret, a, b, ctx))
            || !FUNC5("gcd(A,B)", gcd, ret))
        goto err;

    st = 1;
 err:
    FUNC0(a);
    FUNC0(b);
    FUNC0(gcd);
    FUNC0(ret);
    return st;
}