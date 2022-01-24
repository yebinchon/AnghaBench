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
typedef  int /*<<< orphan*/  dsa_handle ;
typedef  int /*<<< orphan*/  dsa_area ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_on_dsm_detach_release_in_place ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

dsa_area *
FUNC8(dsa_handle handle)
{
	dsm_segment *segment;
	dsa_area   *area;

	/*
	 * An area handle is really a DSM segment handle for the first segment, so
	 * we go ahead and attach to that.
	 */
	segment = FUNC2(handle);
	if (segment == NULL)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("could not attach to dynamic shared area")));

	area = FUNC1(FUNC3(segment), segment, handle);

	/* Clean up when the control segment detaches. */
	FUNC7(segment, &dsa_on_dsm_detach_release_in_place,
				  FUNC0(FUNC3(segment)));

	return area;
}