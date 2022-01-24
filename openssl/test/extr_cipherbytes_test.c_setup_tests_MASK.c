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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  test_empty ; 
 int /*<<< orphan*/  test_unsupported ; 
 int /*<<< orphan*/  test_v2 ; 
 int /*<<< orphan*/  test_v3 ; 

int FUNC5(void)
{
    if (!FUNC3(ctx = FUNC1(FUNC4()))
            || !FUNC3(s = FUNC2(ctx)))
        return 0;

    FUNC0(test_empty);
    FUNC0(test_unsupported);
    FUNC0(test_v2);
    FUNC0(test_v3);
    return 1;
}