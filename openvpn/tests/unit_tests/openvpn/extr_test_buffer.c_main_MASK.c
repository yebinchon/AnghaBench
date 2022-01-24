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
 int /*<<< orphan*/  test_buffer_free_gc_one ; 
 int /*<<< orphan*/  test_buffer_free_gc_two ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_all ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_empty ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_emptybuffers ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_noop ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_nosep ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_two ; 
 int /*<<< orphan*/  test_buffer_list_aggregate_separator_zerolen ; 
 int /*<<< orphan*/  test_buffer_list_full ; 
 int /*<<< orphan*/  test_buffer_list_setup ; 
 int /*<<< orphan*/  test_buffer_list_teardown ; 
 int /*<<< orphan*/  test_buffer_strprefix ; 

int
FUNC3(void)
{
    const struct CMUnitTest tests[] = {
        FUNC1(test_buffer_strprefix),
        FUNC2(test_buffer_list_full,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_empty,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_noop,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_two,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_all,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_nosep,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_zerolen,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC2(test_buffer_list_aggregate_separator_emptybuffers,
                                        test_buffer_list_setup,
                                        test_buffer_list_teardown),
        FUNC1(test_buffer_free_gc_one),
        FUNC1(test_buffer_free_gc_two),
    };

    return FUNC0("buffer", tests, NULL, NULL);
}