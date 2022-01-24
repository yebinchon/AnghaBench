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
 int /*<<< orphan*/  DSM_OP_DETACH ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* dsm_control ; 
 int /*<<< orphan*/  dsm_control_handle ; 
 int /*<<< orphan*/  dsm_control_impl_private ; 
 int /*<<< orphan*/  dsm_control_mapped_size ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int dsm_segment ; 
 int /*<<< orphan*/  dsm_segment_list ; 
 int /*<<< orphan*/  node ; 
 int seg ; 

void
FUNC4(void)
{
	void	   *control_address = dsm_control;

	while (!FUNC1(&dsm_segment_list))
	{
		dsm_segment *seg;

		seg = FUNC0(dsm_segment, node, &dsm_segment_list);
		FUNC2(seg);
	}

	if (control_address != NULL)
		FUNC3(DSM_OP_DETACH, dsm_control_handle, 0,
					&dsm_control_impl_private, &control_address,
					&dsm_control_mapped_size, ERROR);
}