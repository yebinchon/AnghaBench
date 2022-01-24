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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void)
{
#if defined(_BSD_SOURCE) \
        || (defined(_POSIX_C_SOURCE) && _POSIX_C_SOURCE >= 200112L) \
        || (defined(_XOPEN_SOURCE) && _XOPEN_SOURCE >= 600)
    long val = 0;

    /* Verify that a NULL config with a present environment variable returns
     * success and the value.
     */
    if (!TEST_int_eq(setenv("FNORD", "123", 1), 0)
            || !TEST_true(NCONF_get_number(NULL, "missing", "FNORD", &val))
            || !TEST_long_eq(val, 123)) {
        TEST_note("environment variable with NULL conf failed");
        return 0;
    }

    /*
     * Verify that a NULL config with a missing environment variable returns
     * a failure code.
     */
    if (!TEST_int_eq(unsetenv("FNORD"), 0)
            || !TEST_false(NCONF_get_number(NULL, "missing", "FNORD", &val))) {
        TEST_note("missing environment variable with NULL conf failed");
        return 0;
    }
#endif
    return 1;
}