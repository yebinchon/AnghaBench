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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOTAL_RECORD_OVERFLOW_TESTS ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  test_record_overflow ; 

int FUNC3(void)
{
    if (!FUNC1(cert = FUNC2(0))
            || !FUNC1(privkey = FUNC2(1)))
        return 0;

    FUNC0(test_record_overflow, TOTAL_RECORD_OVERFLOW_TESTS);
    return 1;
}