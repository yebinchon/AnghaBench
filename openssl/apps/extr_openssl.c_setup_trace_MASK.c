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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int OSSL_TRACE_CATEGORY_ALL ; 
 int OSSL_TRACE_CATEGORY_NUM ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_trace ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  trace_data_stack ; 

__attribute__((used)) static void FUNC8(const char *str)
{
    char *val;

    /*
     * We add this handler as early as possible to ensure it's executed
     * as late as possible, i.e. after the TRACE code has done its cleanup
     * (which happens last in OPENSSL_cleanup).
     */
    FUNC3(cleanup_trace);

    trace_data_stack = FUNC6();
    val = FUNC1(str);

    if (val != NULL) {
        char *valp = val;
        char *item;

        for (valp = val; (item = FUNC7(valp, ",")) != NULL; valp = NULL) {
            int category = FUNC2(item);

            if (category == OSSL_TRACE_CATEGORY_ALL) {
                while (++category < OSSL_TRACE_CATEGORY_NUM)
                    FUNC5(category);
                break;
            } else if (category > 0) {
                FUNC5(category);
            } else {
                FUNC4(stderr,
                        "warning: unknown trace category: '%s'.\n", item);
            }
        }
    }

    FUNC0(val);
}