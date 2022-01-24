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
typedef  int /*<<< orphan*/  fence_map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (char*,int,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(void)
{
	int i, size, ret;
	int timeline_count = 32;
	int merge_count = 1024 * 32;
	int timelines[timeline_count];
	int fence_map[timeline_count];
	int fence, tmpfence, merged, valid;
	int timeline, timeline_offset, sync_point;

	FUNC3(FUNC13(NULL));

	for (i = 0; i < timeline_count; i++)
		timelines[i] = FUNC7();

	fence = FUNC4(timelines[0], "fence", 0);
	valid = FUNC6(fence);
	FUNC0(valid, "Failure creating fence\n");

	FUNC1(fence_map, -1, sizeof(fence_map));
	fence_map[0] = 0;

	/*
	 * Randomly create sync_points out of a fixed set of timelines,
	 * and merge them together
	 */
	for (i = 0; i < merge_count; i++) {
		/* Generate sync_point. */
		timeline_offset = FUNC2() % timeline_count;
		timeline = timelines[timeline_offset];
		sync_point = FUNC2();

		/* Keep track of the latest sync_point in each timeline. */
		if (fence_map[timeline_offset] == -1)
			fence_map[timeline_offset] = sync_point;
		else if (fence_map[timeline_offset] < sync_point)
			fence_map[timeline_offset] = sync_point;

		/* Merge */
		tmpfence = FUNC4(timeline, "fence", sync_point);
		merged = FUNC11("merge", tmpfence, fence);
		FUNC5(tmpfence);
		FUNC5(fence);
		fence = merged;

		valid = FUNC6(merged);
		FUNC0(valid, "Failure creating fence i\n");
	}

	size = 0;
	for (i = 0; i < timeline_count; i++)
		if (fence_map[i] != -1)
			size++;

	/* Confirm our map matches the fence. */
	FUNC0(FUNC10(fence) == size,
	       "Quantity of elements not matching\n");

	/* Trigger the merged fence */
	for (i = 0; i < timeline_count; i++) {
		if (fence_map[i] != -1) {
			ret = FUNC12(fence, 0);
			FUNC0(ret == 0,
			       "Failure waiting on fence until timeout\n");
			/* Increment the timeline to the last sync_point */
			FUNC9(timelines[i], fence_map[i]);
		}
	}

	/* Check that the fence is triggered. */
	ret = FUNC12(fence, 0);
	FUNC0(ret > 0, "Failure triggering fence\n");

	FUNC5(fence);

	for (i = 0; i < timeline_count; i++)
		FUNC8(timelines[i]);

	return 0;
}