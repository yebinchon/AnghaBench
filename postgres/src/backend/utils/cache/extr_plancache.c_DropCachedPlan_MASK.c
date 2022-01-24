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
struct TYPE_4__ {scalar_t__ magic; int is_saved; int /*<<< orphan*/  context; int /*<<< orphan*/  is_oneshot; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ CachedPlanSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CACHEDPLANSOURCE_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(CachedPlanSource *plansource)
{
	FUNC0(plansource->magic == CACHEDPLANSOURCE_MAGIC);

	/* If it's been saved, remove it from the list */
	if (plansource->is_saved)
	{
		FUNC3(&plansource->node);
		plansource->is_saved = false;
	}

	/* Decrement generic CachedPlan's refcount and drop if no longer needed */
	FUNC2(plansource);

	/* Mark it no longer valid */
	plansource->magic = 0;

	/*
	 * Remove the CachedPlanSource and all subsidiary data (including the
	 * query_context if any).  But if it's a one-shot we can't free anything.
	 */
	if (!plansource->is_oneshot)
		FUNC1(plansource->context);
}