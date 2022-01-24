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
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  test_alloc_fence ; 
 int /*<<< orphan*/  test_alloc_fence_negative ; 
 int /*<<< orphan*/  test_alloc_timeline ; 
 int /*<<< orphan*/  test_consumer_stress_multi_producer_single_consumer ; 
 int /*<<< orphan*/  test_fence_merge_same_fence ; 
 int /*<<< orphan*/  test_fence_multi_timeline_wait ; 
 int /*<<< orphan*/  test_fence_one_timeline_merge ; 
 int /*<<< orphan*/  test_fence_one_timeline_wait ; 
 int /*<<< orphan*/  test_merge_stress_random_merge ; 
 int /*<<< orphan*/  test_stress_two_threads_shared_timeline ; 

int FUNC9(void)
{
	int err;

	FUNC4();
	FUNC6(3 + 7);

	FUNC8();

	FUNC5("[RUN]\tTesting sync framework\n");

	FUNC0(test_alloc_timeline);
	FUNC0(test_alloc_fence);
	FUNC0(test_alloc_fence_negative);

	FUNC0(test_fence_one_timeline_wait);
	FUNC0(test_fence_one_timeline_merge);
	FUNC0(test_fence_merge_same_fence);
	FUNC0(test_fence_multi_timeline_wait);
	FUNC0(test_stress_two_threads_shared_timeline);
	FUNC0(test_consumer_stress_multi_producer_single_consumer);
	FUNC0(test_merge_stress_random_merge);

	err = FUNC3();
	if (err)
		FUNC1("%d out of %d sync tests failed\n",
					err, FUNC7());

	/* need this return to keep gcc happy */
	return FUNC2();
}