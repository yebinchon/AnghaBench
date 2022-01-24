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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void)
{
    BIGNUM *bn = NULL;
    int st = 0;

    if (!FUNC8(bn = FUNC2()))
        goto err;

    if (!FUNC9(FUNC0(&bn, "0"))
            || !FUNC5(bn)
            || !FUNC6(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "256"))
            || !FUNC4(bn, 256)
            || !FUNC6(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "-42"))
            || !FUNC3(bn, 42)
            || !FUNC7(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "0x1234"))
            || !FUNC4(bn, 0x1234)
            || !FUNC6(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "0X1234"))
            || !FUNC4(bn, 0x1234)
            || !FUNC6(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "-0xabcd"))
            || !FUNC3(bn, 0xabcd)
            || !FUNC7(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "-0"))
            || !FUNC5(bn)
            || !FUNC6(bn))
        goto err;

    if (!FUNC9(FUNC0(&bn, "123trailing garbage is ignored"))
            || !FUNC4(bn, 123)
            || !FUNC6(bn))
        goto err;

    st = 1;
 err:
    FUNC1(bn);
    return st;
}