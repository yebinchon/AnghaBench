#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_7__ {int is_valid; scalar_t__ rewriteRoleId; scalar_t__ rewriteRowSecurity; int is_complete; int /*<<< orphan*/ * query_list; int /*<<< orphan*/ * query_context; int /*<<< orphan*/ * context; int /*<<< orphan*/ * search_path; scalar_t__ dependsOnRLS; int /*<<< orphan*/ * invalItems; int /*<<< orphan*/ * relationOids; int /*<<< orphan*/ * resultDesc; scalar_t__ fixed_result; int /*<<< orphan*/  num_params; int /*<<< orphan*/  param_types; int /*<<< orphan*/  query_string; int /*<<< orphan*/  parserSetupArg; int /*<<< orphan*/ * parserSetup; int /*<<< orphan*/ * raw_parse_tree; TYPE_1__* gplan; scalar_t__ is_oneshot; } ;
struct TYPE_6__ {int is_valid; } ;
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ CachedPlanSource ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_START_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ row_security ; 

__attribute__((used)) static List *
FUNC26(CachedPlanSource *plansource,
					  QueryEnvironment *queryEnv)
{
	bool		snapshot_set;
	RawStmt    *rawtree;
	List	   *tlist;			/* transient query-tree list */
	List	   *qlist;			/* permanent query-tree list */
	TupleDesc	resultDesc;
	MemoryContext querytree_context;
	MemoryContext oldcxt;

	/*
	 * For one-shot plans, we do not support revalidation checking; it's
	 * assumed the query is parsed, planned, and executed in one transaction,
	 * so that no lock re-acquisition is necessary.  Also, there is never any
	 * need to revalidate plans for transaction control commands (and we
	 * mustn't risk any catalog accesses when handling those).
	 */
	if (plansource->is_oneshot || FUNC9(plansource))
	{
		FUNC3(plansource->is_valid);
		return NIL;
	}

	/*
	 * If the query is currently valid, we should have a saved search_path ---
	 * check to see if that matches the current environment.  If not, we want
	 * to force replan.
	 */
	if (plansource->is_valid)
	{
		FUNC3(plansource->search_path != NULL);
		if (!FUNC13(plansource->search_path))
		{
			/* Invalidate the querytree and generic plan */
			plansource->is_valid = false;
			if (plansource->gplan)
				plansource->gplan->is_valid = false;
		}
	}

	/*
	 * If the query rewrite phase had a possible RLS dependency, we must redo
	 * it if either the role or the row_security setting has changed.
	 */
	if (plansource->is_valid && plansource->dependsOnRLS &&
		(plansource->rewriteRoleId != FUNC8() ||
		 plansource->rewriteRowSecurity != row_security))
		plansource->is_valid = false;

	/*
	 * If the query is currently valid, acquire locks on the referenced
	 * objects; then check again.  We need to do it this way to cover the race
	 * condition that an invalidation message arrives before we get the locks.
	 */
	if (plansource->is_valid)
	{
		FUNC0(plansource->query_list, true);

		/*
		 * By now, if any invalidation has happened, the inval callback
		 * functions will have marked the query invalid.
		 */
		if (plansource->is_valid)
		{
			/* Successfully revalidated and locked the query. */
			return NIL;
		}

		/* Oops, the race case happened.  Release useless locks. */
		FUNC0(plansource->query_list, false);
	}

	/*
	 * Discard the no-longer-useful query tree.  (Note: we don't want to do
	 * this any earlier, else we'd not have been able to release locks
	 * correctly in the race condition case.)
	 */
	plansource->is_valid = false;
	plansource->query_list = NIL;
	plansource->relationOids = NIL;
	plansource->invalItems = NIL;
	plansource->search_path = NULL;

	/*
	 * Free the query_context.  We don't really expect MemoryContextDelete to
	 * fail, but just in case, make sure the CachedPlanSource is left in a
	 * reasonably sane state.  (The generic plan won't get unlinked yet, but
	 * that's acceptable.)
	 */
	if (plansource->query_context)
	{
		MemoryContext qcxt = plansource->query_context;

		plansource->query_context = NULL;
		FUNC10(qcxt);
	}

	/* Drop the generic plan reference if any */
	FUNC17(plansource);

	/*
	 * Now re-do parse analysis and rewrite.  This not incidentally acquires
	 * the locks we need to do planning safely.
	 */
	FUNC3(plansource->is_complete);

	/*
	 * If a snapshot is already set (the normal case), we can just use that
	 * for parsing/planning.  But if it isn't, install one.  Note: no point in
	 * checking whether parse analysis requires a snapshot; utility commands
	 * don't have invalidatable plans, so we'd not get here for such a
	 * command.
	 */
	snapshot_set = false;
	if (!FUNC1())
	{
		FUNC16(FUNC7());
		snapshot_set = true;
	}

	/*
	 * Run parse analysis and rule rewriting.  The parser tends to scribble on
	 * its input, so we must copy the raw parse tree to prevent corruption of
	 * the cache.
	 */
	rawtree = FUNC18(plansource->raw_parse_tree);
	if (rawtree == NULL)
		tlist = NIL;
	else if (plansource->parserSetup != NULL)
		tlist = FUNC25(rawtree,
											  plansource->query_string,
											  plansource->parserSetup,
											  plansource->parserSetupArg,
											  queryEnv);
	else
		tlist = FUNC24(rawtree,
									   plansource->query_string,
									   plansource->param_types,
									   plansource->num_params,
									   queryEnv);

	/* Release snapshot if we got one */
	if (snapshot_set)
		FUNC15();

	/*
	 * Check or update the result tupdesc.  XXX should we use a weaker
	 * condition than equalTupleDescs() here?
	 *
	 * We assume the parameter types didn't change from the first time, so no
	 * need to update that.
	 */
	resultDesc = FUNC14(tlist);
	if (resultDesc == NULL && plansource->resultDesc == NULL)
	{
		/* OK, doesn't return tuples */
	}
	else if (resultDesc == NULL || plansource->resultDesc == NULL ||
			 !FUNC19(resultDesc, plansource->resultDesc))
	{
		/* can we give a better error message? */
		if (plansource->fixed_result)
			FUNC20(ERROR,
					(FUNC21(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC22("cached plan must not change result type")));
		oldcxt = FUNC12(plansource->context);
		if (resultDesc)
			resultDesc = FUNC4(resultDesc);
		if (plansource->resultDesc)
			FUNC5(plansource->resultDesc);
		plansource->resultDesc = resultDesc;
		FUNC12(oldcxt);
	}

	/*
	 * Allocate new query_context and copy the completed querytree into it.
	 * It's transient until we complete the copying and dependency extraction.
	 */
	querytree_context = FUNC2(CurrentMemoryContext,
											  "CachedPlanQuery",
											  ALLOCSET_START_SMALL_SIZES);
	oldcxt = FUNC12(querytree_context);

	qlist = FUNC18(tlist);

	/*
	 * Use the planner machinery to extract dependencies.  Data is saved in
	 * query_context.  (We assume that not a lot of extra cruft is created by
	 * this call.)
	 */
	FUNC23((Node *) qlist,
							   &plansource->relationOids,
							   &plansource->invalItems,
							   &plansource->dependsOnRLS);

	/* Update RLS info as well. */
	plansource->rewriteRoleId = FUNC8();
	plansource->rewriteRowSecurity = row_security;

	/*
	 * Also save the current search_path in the query_context.  (This should
	 * not generate much extra cruft either, since almost certainly the path
	 * is already valid.)
	 */
	plansource->search_path = FUNC6(querytree_context);

	FUNC12(oldcxt);

	/* Now reparent the finished query_context and save the links */
	FUNC11(querytree_context, plansource->context);

	plansource->query_context = querytree_context;
	plansource->query_list = qlist;

	/*
	 * Note: we do not reset generic_cost or total_custom_cost, although we
	 * could choose to do so.  If the DDL or statistics change that prompted
	 * the invalidation meant a significant change in the cost estimates, it
	 * would be better to reset those variables and start fresh; but often it
	 * doesn't, and we're better retaining our hard-won knowledge about the
	 * relative costs.
	 */

	plansource->is_valid = true;

	/* Return transient copy of querytrees for possible use in planning */
	return tlist;
}