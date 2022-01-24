#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* test_case_name; unsigned long long epoch_time_in_ms; struct TYPE_9__* ctlog_store; } ;
typedef  TYPE_1__ CT_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static CT_TEST_FIXTURE *FUNC8(const char *const test_case_name)
{
    CT_TEST_FIXTURE *fixture = NULL;

    if (!FUNC7(fixture = FUNC4(sizeof(*fixture))))
        goto end;
    fixture->test_case_name = test_case_name;
    fixture->epoch_time_in_ms = 1473269626000ULL; /* Sep 7 17:33:46 2016 GMT */
    if (!FUNC7(fixture->ctlog_store = FUNC2())
            || !FUNC6(
                    FUNC1(fixture->ctlog_store), 1))
        goto end;
    return fixture;

end:
    if (fixture != NULL)
        FUNC0(fixture->ctlog_store);
    FUNC3(fixture);
    FUNC5("Failed to setup");
    return NULL;
}