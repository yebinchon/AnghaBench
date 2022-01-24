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
struct TYPE_4__ {scalar_t__ magic; int is_complete; int is_saved; int /*<<< orphan*/  node; int /*<<< orphan*/  context; scalar_t__ is_oneshot; } ;
typedef  TYPE_1__ CachedPlanSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CACHEDPLANSOURCE_MAGIC ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  saved_plan_list ; 

void
FUNC5(CachedPlanSource *plansource)
{
	/* Assert caller is doing things in a sane order */
	FUNC0(plansource->magic == CACHEDPLANSOURCE_MAGIC);
	FUNC0(plansource->is_complete);
	FUNC0(!plansource->is_saved);

	/* This seems worth a real test, though */
	if (plansource->is_oneshot)
		FUNC4(ERROR, "cannot save one-shot cached plan");

	/*
	 * In typical use, this function would be called before generating any
	 * plans from the CachedPlanSource.  If there is a generic plan, moving it
	 * into CacheMemoryContext would be pretty risky since it's unclear
	 * whether the caller has taken suitable care with making references
	 * long-lived.  Best thing to do seems to be to discard the plan.
	 */
	FUNC2(plansource);

	/*
	 * Reparent the source memory context under CacheMemoryContext so that it
	 * will live indefinitely.  The query_context follows along since it's
	 * already a child of the other one.
	 */
	FUNC1(plansource->context, CacheMemoryContext);

	/*
	 * Add the entry to the global list of cached plans.
	 */
	FUNC3(&saved_plan_list, &plansource->node);

	plansource->is_saved = true;
}