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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
    BIGNUM *a = NULL, *r = NULL, *zero = NULL;
    int st = 0;

    if (!FUNC9(zero = FUNC5())
            || !FUNC9(a = FUNC5())
            || !FUNC9(r = FUNC5()))
        goto err;
    FUNC7(zero);

    if (!FUNC10(FUNC1(r, a, zero, FUNC6(), NULL))
            || !FUNC8(r)
            || !FUNC10(FUNC2(r, a, zero, FUNC6(),
                                          NULL, NULL))
            || !FUNC8(r)
            || !FUNC10(FUNC3(r, a, zero,
                                                    FUNC6(),
                                                    NULL, NULL))
            || !FUNC8(r)
            || !FUNC10(FUNC4(r, 42, zero,
                                               FUNC6(), NULL, NULL))
            || !FUNC8(r))
        goto err;

    st = 1;
 err:
    FUNC0(zero);
    FUNC0(a);
    FUNC0(r);
    return st;
}