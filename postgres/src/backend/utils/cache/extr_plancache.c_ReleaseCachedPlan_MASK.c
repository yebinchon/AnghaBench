#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ magic; int is_saved; scalar_t__ refcount; int /*<<< orphan*/  context; int /*<<< orphan*/  is_oneshot; } ;
typedef  TYPE_1__ CachedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CACHEDPLAN_MAGIC ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3(CachedPlan *plan, bool useResOwner)
{
	FUNC0(plan->magic == CACHEDPLAN_MAGIC);
	if (useResOwner)
	{
		FUNC0(plan->is_saved);
		FUNC2(CurrentResourceOwner, plan);
	}
	FUNC0(plan->refcount > 0);
	plan->refcount--;
	if (plan->refcount == 0)
	{
		/* Mark it no longer valid */
		plan->magic = 0;

		/* One-shot plans do not own their context, so we can't free them */
		if (!plan->is_oneshot)
			FUNC1(plan->context);
	}
}