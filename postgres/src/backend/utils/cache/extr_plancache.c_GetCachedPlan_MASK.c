#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ magic; int is_saved; int /*<<< orphan*/  context; int /*<<< orphan*/  refcount; } ;
struct TYPE_13__ {scalar_t__ magic; int is_complete; scalar_t__ num_custom_plans; scalar_t__ is_saved; int /*<<< orphan*/  total_custom_cost; scalar_t__ generic_cost; int /*<<< orphan*/  context; TYPE_2__* gplan; } ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/ * ParamListInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ CachedPlanSource ;
typedef  TYPE_2__ CachedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ CACHEDPLANSOURCE_MAGIC ; 
 scalar_t__ CACHEDPLAN_MAGIC ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

CachedPlan *
FUNC12(CachedPlanSource *plansource, ParamListInfo boundParams,
			  bool useResOwner, QueryEnvironment *queryEnv)
{
	CachedPlan *plan = NULL;
	List	   *qlist;
	bool		customplan;

	/* Assert caller is doing things in a sane order */
	FUNC0(plansource->magic == CACHEDPLANSOURCE_MAGIC);
	FUNC0(plansource->is_complete);
	/* This seems worth a real test, though */
	if (useResOwner && !plansource->is_saved)
		FUNC11(ERROR, "cannot apply ResourceOwner to non-saved cached plan");

	/* Make sure the querytree list is valid and we have parse-time locks */
	qlist = FUNC8(plansource, queryEnv);

	/* Decide whether to use a custom plan */
	customplan = FUNC10(plansource, boundParams);

	if (!customplan)
	{
		if (FUNC2(plansource))
		{
			/* We want a generic plan, and we already have a valid one */
			plan = plansource->gplan;
			FUNC0(plan->magic == CACHEDPLAN_MAGIC);
		}
		else
		{
			/* Build a new generic plan */
			plan = FUNC1(plansource, qlist, NULL, queryEnv);
			/* Just make real sure plansource->gplan is clear */
			FUNC5(plansource);
			/* Link the new generic plan into the plansource */
			plansource->gplan = plan;
			plan->refcount++;
			/* Immediately reparent into appropriate context */
			if (plansource->is_saved)
			{
				/* saved plans all live under CacheMemoryContext */
				FUNC4(plan->context, CacheMemoryContext);
				plan->is_saved = true;
			}
			else
			{
				/* otherwise, it should be a sibling of the plansource */
				FUNC4(plan->context,
									   FUNC3(plansource->context));
			}
			/* Update generic_cost whenever we make a new generic plan */
			plansource->generic_cost = FUNC9(plan, false);

			/*
			 * If, based on the now-known value of generic_cost, we'd not have
			 * chosen to use a generic plan, then forget it and make a custom
			 * plan.  This is a bit of a wart but is necessary to avoid a
			 * glitch in behavior when the custom plans are consistently big
			 * winners; at some point we'll experiment with a generic plan and
			 * find it's a loser, but we don't want to actually execute that
			 * plan.
			 */
			customplan = FUNC10(plansource, boundParams);

			/*
			 * If we choose to plan again, we need to re-copy the query_list,
			 * since the planner probably scribbled on it.  We can force
			 * BuildCachedPlan to do that by passing NIL.
			 */
			qlist = NIL;
		}
	}

	if (customplan)
	{
		/* Build a custom plan */
		plan = FUNC1(plansource, qlist, boundParams, queryEnv);
		/* Accumulate total costs of custom plans, but 'ware overflow */
		if (plansource->num_custom_plans < INT_MAX)
		{
			plansource->total_custom_cost += FUNC9(plan, true);
			plansource->num_custom_plans++;
		}
	}

	FUNC0(plan != NULL);

	/* Flag the plan as in use by caller */
	if (useResOwner)
		FUNC6(CurrentResourceOwner);
	plan->refcount++;
	if (useResOwner)
		FUNC7(CurrentResourceOwner, plan);

	/*
	 * Saved plans should be under CacheMemoryContext so they will not go away
	 * until their reference count goes to zero.  In the generic-plan cases we
	 * already took care of that, but for a custom plan, do it as soon as we
	 * have created a reference-counted link.
	 */
	if (customplan && plansource->is_saved)
	{
		FUNC4(plan->context, CacheMemoryContext);
		plan->is_saved = true;
	}

	return plan;
}