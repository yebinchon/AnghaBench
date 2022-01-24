#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t control_slot; int /*<<< orphan*/  impl_private; int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ dsm_segment ;
struct TYPE_7__ {TYPE_1__* item; } ;
struct TYPE_5__ {int pinned; void* impl_private_pm_handle; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DynamicSharedMemoryControlLock ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* dsm_control ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(dsm_segment *seg)
{
	void	   *handle;

	/*
	 * Bump reference count for this segment in shared memory. This will
	 * ensure that even if there is no session which is attached to this
	 * segment, it will remain until postmaster shutdown or an explicit call
	 * to unpin.
	 */
	FUNC0(DynamicSharedMemoryControlLock, LW_EXCLUSIVE);
	if (dsm_control->item[seg->control_slot].pinned)
		FUNC3(ERROR, "cannot pin a segment that is already pinned");
	FUNC2(seg->handle, seg->impl_private, &handle);
	dsm_control->item[seg->control_slot].pinned = true;
	dsm_control->item[seg->control_slot].refcnt++;
	dsm_control->item[seg->control_slot].impl_private_pm_handle = handle;
	FUNC1(DynamicSharedMemoryControlLock);
}