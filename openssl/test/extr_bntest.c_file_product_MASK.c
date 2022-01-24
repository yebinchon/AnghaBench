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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(STANZA *s)
{
    BIGNUM *a = NULL, *b = NULL, *product = NULL, *ret = NULL;
    BIGNUM *remainder = NULL, *zero = NULL;
    int st = 0;

    if (!FUNC5(a = FUNC8(s, "A"))
            || !FUNC5(b = FUNC8(s, "B"))
            || !FUNC5(product = FUNC8(s, "Product"))
            || !FUNC5(ret = FUNC3())
            || !FUNC5(remainder = FUNC3())
            || !FUNC5(zero = FUNC3()))
        goto err;

    FUNC4(zero);

    if (!FUNC6(FUNC2(ret, a, b, ctx))
            || !FUNC7("A * B", product, ret)
            || !FUNC6(FUNC0(ret, remainder, product, a, ctx))
            || !FUNC7("Product / A", b, ret)
            || !FUNC7("Product % A", zero, remainder)
            || !FUNC6(FUNC0(ret, remainder, product, b, ctx))
            || !FUNC7("Product / B", a, ret)
            || !FUNC7("Product % B", zero, remainder))
        goto err;

    st = 1;
 err:
    FUNC1(a);
    FUNC1(b);
    FUNC1(product);
    FUNC1(ret);
    FUNC1(remainder);
    FUNC1(zero);
    return st;
}