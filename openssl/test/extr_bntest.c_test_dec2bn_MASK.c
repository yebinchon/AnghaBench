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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static int FUNC14(void)
{
    BIGNUM *bn = NULL;
    int st = 0;

    if (!FUNC12(FUNC13(&bn, "0"), 1)
            || !FUNC3(bn, 0)
            || !FUNC4(bn)
            || !FUNC8(bn)
            || !FUNC6(bn)
            || !FUNC5(bn))
        goto err;
    FUNC0(bn);
    bn = NULL;

    if (!FUNC12(FUNC13(&bn, "256"), 3)
            || !FUNC3(bn, 256)
            || !FUNC6(bn)
            || !FUNC7(bn)
            || !FUNC10(bn)
            || !FUNC5(bn))
        goto err;
    FUNC0(bn);
    bn = NULL;

    if (!FUNC12(FUNC13(&bn, "-42"), 3)
            || !FUNC1(bn, 42)
            || !FUNC9(bn)
            || !FUNC8(bn)
            || !FUNC10(bn)
            || !FUNC5(bn))
        goto err;
    FUNC0(bn);
    bn = NULL;

    if (!FUNC12(FUNC13(&bn, "1"), 1)
            || !FUNC3(bn, 1)
            || !FUNC10(bn)
            || !FUNC7(bn)
            || !FUNC6(bn)
            || !FUNC2(bn)
            || !FUNC11(bn))
        goto err;
    FUNC0(bn);
    bn = NULL;

    if (!FUNC12(FUNC13(&bn, "-0"), 2)
            || !FUNC4(bn)
            || !FUNC6(bn)
            || !FUNC8(bn)
            || !FUNC5(bn))
        goto err;
    FUNC0(bn);
    bn = NULL;

    if (!FUNC12(FUNC13(&bn, "42trailing garbage is ignored"), 2)
            || !FUNC1(bn, 42)
            || !FUNC6(bn)
            || !FUNC7(bn)
            || !FUNC10(bn)
            || !FUNC5(bn))
        goto err;

    st = 1;
 err:
    FUNC0(bn);
    return st;
}