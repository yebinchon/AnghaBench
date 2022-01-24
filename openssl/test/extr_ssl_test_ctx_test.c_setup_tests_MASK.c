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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bad_configurations ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  test_bad_configuration ; 
 int /*<<< orphan*/  test_empty_configuration ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_good_configuration ; 

int FUNC8(void)
{
    if (!FUNC6(conf = FUNC3(NULL)))
        return 0;
    /* argument should point to test/ssl_test_ctx_test.conf */
    if (!FUNC5(FUNC2(conf, FUNC7(0), NULL), 0))
        return 0;

    FUNC1(test_empty_configuration);
    FUNC1(test_good_configuration);
    FUNC0(test_bad_configuration, FUNC4(bad_configurations));
    return 1;
}