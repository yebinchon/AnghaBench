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
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsa_area ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_INITIAL_SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsa_on_dsm_detach_release_in_place ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

dsa_area *
FUNC7(int tranche_id)
{
	dsm_segment *segment;
	dsa_area   *area;

	/*
	 * Create the DSM segment that will hold the shared control object and the
	 * first segment of usable space.
	 */
	segment = FUNC2(DSA_INITIAL_SEGMENT_SIZE, 0);

	/*
	 * All segments backing this area are pinned, so that DSA can explicitly
	 * control their lifetime (otherwise a newly created segment belonging to
	 * this area might be freed when the only backend that happens to have it
	 * mapped in ends, corrupting the area).
	 */
	FUNC3(segment);

	/* Create a new DSA area with the control object in this segment. */
	area = FUNC1(FUNC4(segment),
						   DSA_INITIAL_SEGMENT_SIZE,
						   tranche_id,
						   FUNC5(segment), segment);

	/* Clean up when the control segment detaches. */
	FUNC6(segment, &dsa_on_dsm_detach_release_in_place,
				  FUNC0(FUNC4(segment)));

	return area;
}