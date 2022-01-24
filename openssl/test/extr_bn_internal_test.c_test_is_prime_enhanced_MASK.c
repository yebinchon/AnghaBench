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
 int /*<<< orphan*/  BN_PRIMETEST_PROBABLY_PRIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  ctx ; 

__attribute__((used)) static int FUNC7(void)
{
    int ret;
    int status = 0;
    BIGNUM *bn = NULL;

    ret = FUNC4(bn = FUNC1())
          /* test passing a prime returns the correct status */
          && FUNC5(FUNC2(bn, 11))
          /* return extra parameters related to composite */
          && FUNC5(FUNC6(bn, 10, ctx, NULL, 1, &status))
          && FUNC3(status, BN_PRIMETEST_PROBABLY_PRIME);
    FUNC0(bn);
    return ret;
}