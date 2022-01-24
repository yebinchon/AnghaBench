#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int min_varlevel; int min_agglevel; scalar_t__ sublevels_up; int /*<<< orphan*/ * pstate; } ;
typedef  TYPE_1__ check_agg_arguments_context ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_GROUPING_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  check_agg_arguments_walker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(ParseState *pstate,
					List *directargs,
					List *args,
					Expr *filter)
{
	int			agglevel;
	check_agg_arguments_context context;

	context.pstate = pstate;
	context.min_varlevel = -1;	/* signifies nothing found yet */
	context.min_agglevel = -1;
	context.sublevels_up = 0;

	(void) FUNC4((Node *) args,
								  check_agg_arguments_walker,
								  (void *) &context);

	(void) FUNC4((Node *) filter,
								  check_agg_arguments_walker,
								  (void *) &context);

	/*
	 * If we found no vars nor aggs at all, it's a level-zero aggregate;
	 * otherwise, its level is the minimum of vars or aggs.
	 */
	if (context.min_varlevel < 0)
	{
		if (context.min_agglevel < 0)
			agglevel = 0;
		else
			agglevel = context.min_agglevel;
	}
	else if (context.min_agglevel < 0)
		agglevel = context.min_varlevel;
	else
		agglevel = FUNC0(context.min_varlevel, context.min_agglevel);

	/*
	 * If there's a nested aggregate of the same semantic level, complain.
	 */
	if (agglevel == context.min_agglevel)
	{
		int			aggloc;

		aggloc = FUNC5((Node *) args, agglevel);
		if (aggloc < 0)
			aggloc = FUNC5((Node *) filter, agglevel);
		FUNC1(ERROR,
				(FUNC2(ERRCODE_GROUPING_ERROR),
				 FUNC3("aggregate function calls cannot be nested"),
				 FUNC7(pstate, aggloc)));
	}

	/*
	 * Now check for vars/aggs in the direct arguments, and throw error if
	 * needed.  Note that we allow a Var of the agg's semantic level, but not
	 * an Agg of that level.  In principle such Aggs could probably be
	 * supported, but it would create an ordering dependency among the
	 * aggregates at execution time.  Since the case appears neither to be
	 * required by spec nor particularly useful, we just treat it as a
	 * nested-aggregate situation.
	 */
	if (directargs)
	{
		context.min_varlevel = -1;
		context.min_agglevel = -1;
		(void) FUNC4((Node *) directargs,
									  check_agg_arguments_walker,
									  (void *) &context);
		if (context.min_varlevel >= 0 && context.min_varlevel < agglevel)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_GROUPING_ERROR),
					 FUNC3("outer-level aggregate cannot contain a lower-level variable in its direct arguments"),
					 FUNC7(pstate,
										FUNC6((Node *) directargs,
															context.min_varlevel))));
		if (context.min_agglevel >= 0 && context.min_agglevel <= agglevel)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_GROUPING_ERROR),
					 FUNC3("aggregate function calls cannot be nested"),
					 FUNC7(pstate,
										FUNC5((Node *) directargs,
															context.min_agglevel))));
	}
	return agglevel;
}