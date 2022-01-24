#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * rd_indpred; int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/ * rd_indextuple; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*) ; 

List *
FUNC13(Relation relation)
{
	List	   *result;
	Datum		predDatum;
	bool		isnull;
	char	   *predString;
	MemoryContext oldcxt;

	/* Quick exit if we already computed the result. */
	if (relation->rd_indpred)
		return FUNC5(relation->rd_indpred);

	/* Quick exit if there is nothing to do. */
	if (relation->rd_indextuple == NULL ||
		FUNC8(relation->rd_indextuple, Anum_pg_index_indpred, NULL))
		return NIL;

	/*
	 * We build the tree we intend to return in the caller's context. After
	 * successfully completing the work, we copy it into the relcache entry.
	 * This avoids problems if we get some sort of error partway through.
	 */
	predDatum = FUNC9(relation->rd_indextuple,
							 Anum_pg_index_indpred,
							 FUNC1(),
							 &isnull);
	FUNC0(!isnull);
	predString = FUNC3(predDatum);
	result = (List *) FUNC12(predString);
	FUNC11(predString);

	/*
	 * Run the expression through const-simplification and canonicalization.
	 * This is not just an optimization, but is necessary, because the planner
	 * will be comparing it to similarly-processed qual clauses, and may fail
	 * to detect valid matches without this.  This must match the processing
	 * done to qual clauses in preprocess_expression()!  (We can skip the
	 * stuff involving subqueries, however, since we don't allow any in index
	 * predicates.)
	 */
	result = (List *) FUNC6(NULL, (Node *) result);

	result = (List *) FUNC4((Expr *) result, false);

	/* Also convert to implicit-AND format */
	result = FUNC10((Expr *) result);

	/* May as well fix opfuncids too */
	FUNC7((Node *) result);

	/* Now save a copy of the completed tree in the relcache entry. */
	oldcxt = FUNC2(relation->rd_indexcxt);
	relation->rd_indpred = FUNC5(result);
	FUNC2(oldcxt);

	return result;
}