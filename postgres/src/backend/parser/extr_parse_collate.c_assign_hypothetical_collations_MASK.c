#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ collation; scalar_t__ strength; int location; scalar_t__ collation2; int location2; int /*<<< orphan*/  pstate; } ;
typedef  TYPE_1__ assign_collations_context ;
struct TYPE_9__ {int /*<<< orphan*/ * expr; } ;
typedef  TYPE_2__ TargetEntry ;
struct TYPE_10__ {int /*<<< orphan*/  args; int /*<<< orphan*/  aggdirectargs; int /*<<< orphan*/  aggfnoid; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_3__ Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 scalar_t__ COLLATE_CONFLICT ; 
 scalar_t__ COLLATE_NONE ; 
 int /*<<< orphan*/  ERRCODE_COLLATION_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int,scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC19(Aggref *aggref,
							   assign_collations_context *loccontext)
{
	ListCell   *h_cell = FUNC13(aggref->aggdirectargs);
	ListCell   *s_cell = FUNC13(aggref->args);
	bool		merge_sort_collations;
	int			extra_args;

	/* Merge sort collations to parent only if there can be only one */
	merge_sort_collations = (FUNC14(aggref->args) == 1 &&
							 FUNC11(aggref->aggfnoid) == InvalidOid);

	/* Process any non-hypothetical direct args */
	extra_args = FUNC14(aggref->aggdirectargs) - FUNC14(aggref->args);
	FUNC0(extra_args >= 0);
	while (extra_args-- > 0)
	{
		(void) FUNC2((Node *) FUNC12(h_cell), loccontext);
		h_cell = FUNC15(aggref->aggdirectargs, h_cell);
	}

	/* Scan hypothetical args and aggregated args in parallel */
	while (h_cell && s_cell)
	{
		Node	   *h_arg = (Node *) FUNC12(h_cell);
		TargetEntry *s_tle = (TargetEntry *) FUNC12(s_cell);
		assign_collations_context paircontext;

		/*
		 * Assign collations internally in this pair of expressions, then
		 * choose a common collation for them.  This should match
		 * select_common_collation(), but we can't use that function as-is
		 * because we need access to the whole collation state so we can
		 * bubble it up to the aggregate function's level.
		 */
		paircontext.pstate = loccontext->pstate;
		paircontext.collation = InvalidOid;
		paircontext.strength = COLLATE_NONE;
		paircontext.location = -1;
		/* Set these fields just to suppress uninitialized-value warnings: */
		paircontext.collation2 = InvalidOid;
		paircontext.location2 = -1;

		(void) FUNC2(h_arg, &paircontext);
		(void) FUNC2((Node *) s_tle->expr, &paircontext);

		/* deal with collation conflict */
		if (paircontext.strength == COLLATE_CONFLICT)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_COLLATION_MISMATCH),
					 FUNC6("collation mismatch between implicit collations \"%s\" and \"%s\"",
							FUNC10(paircontext.collation),
							FUNC10(paircontext.collation2)),
					 FUNC5("You can choose the collation by applying the COLLATE clause to one or both expressions."),
					 FUNC18(paircontext.pstate,
										paircontext.location2)));

		/*
		 * At this point paircontext.collation can be InvalidOid only if the
		 * type is not collatable; no need to do anything in that case.  If we
		 * do have to change the sort column's collation, do it by inserting a
		 * RelabelType node into the sort column TLE.
		 *
		 * XXX This is pretty grotty for a couple of reasons:
		 * assign_collations_walker isn't supposed to be changing the
		 * expression structure like this, and a parse-time change of
		 * collation ought to be signaled by a CollateExpr not a RelabelType
		 * (the use of RelabelType for collation marking is supposed to be a
		 * planner/executor thing only).  But we have no better alternative.
		 * In particular, injecting a CollateExpr could result in the
		 * expression being interpreted differently after dump/reload, since
		 * we might be effectively promoting an implicit collation to
		 * explicit.  This kluge is relying on ruleutils.c not printing a
		 * COLLATE clause for a RelabelType, and probably on some other
		 * fragile behaviors.
		 */
		if (FUNC1(paircontext.collation) &&
			paircontext.collation != FUNC7((Node *) s_tle->expr))
		{
			s_tle->expr = (Expr *)
				FUNC16(s_tle->expr,
								FUNC8((Node *) s_tle->expr),
								FUNC9((Node *) s_tle->expr),
								paircontext.collation,
								COERCE_IMPLICIT_CAST);
		}

		/*
		 * If appropriate, merge this column's collation state up to the
		 * aggregate function.
		 */
		if (merge_sort_collations)
			FUNC17(paircontext.collation,
								  paircontext.strength,
								  paircontext.location,
								  paircontext.collation2,
								  paircontext.location2,
								  loccontext);

		h_cell = FUNC15(aggref->aggdirectargs, h_cell);
		s_cell = FUNC15(aggref->args, s_cell);
	}
	FUNC0(h_cell == NULL && s_cell == NULL);
}