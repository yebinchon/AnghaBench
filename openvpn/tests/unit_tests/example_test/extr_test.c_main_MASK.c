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
struct CMUnitTest {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,struct CMUnitTest const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct CMUnitTest const FUNC1 (int /*<<< orphan*/ ) ; 
 struct CMUnitTest const FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int_test_success ; 
 int /*<<< orphan*/  null_test_success ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  teardown ; 

int
FUNC3(void) {
    const struct CMUnitTest tests[] = {
        FUNC1(null_test_success),
        FUNC2(int_test_success, setup, teardown),
/*        cmocka_unit_test(failing_test), */
    };

    return FUNC0("success_test", tests, NULL, NULL);
}