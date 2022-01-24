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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  composites ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  test_bn_small_factors ; 
 int /*<<< orphan*/  test_is_composite_enhanced ; 
 int /*<<< orphan*/  test_is_prime_enhanced ; 

int FUNC5(void)
{
    if (!FUNC4(ctx = FUNC2()))
        return 0;

    FUNC1(test_is_prime_enhanced);
    FUNC0(test_is_composite_enhanced, (int)FUNC3(composites));
    FUNC1(test_bn_small_factors);

    return 1;
}