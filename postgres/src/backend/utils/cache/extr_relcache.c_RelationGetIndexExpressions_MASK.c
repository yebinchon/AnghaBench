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
struct TYPE_3__ {int /*<<< orphan*/ * rd_indexprs; int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/ * rd_indextuple; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_index_indexprs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 

List *
FUNC11(Relation relation)
{
	List	   *result;
	Datum		exprsDatum;
	bool		isnull;
	char	   *exprsString;
	MemoryContext oldcxt;

	/* Quick exit if we already computed the result. */
	if (relation->rd_indexprs)
		return FUNC4(relation->rd_indexprs);

	/* Quick exit if there is nothing to do. */
	if (relation->rd_indextuple == NULL ||
		FUNC7(relation->rd_indextuple, Anum_pg_index_indexprs, NULL))
		return NIL;

	/*
	 * We build the tree we intend to return in the caller's context. After
	 * successfully completing the work, we copy it into the relcache entry.
	 * This avoids problems if we get some sort of error partway through.
	 */
	exprsDatum = FUNC8(relation->rd_indextuple,
							  Anum_pg_index_indexprs,
							  FUNC1(),
							  &isnull);
	FUNC0(!isnull);
	exprsString = FUNC3(exprsDatum);
	result = (List *) FUNC10(exprsString);
	FUNC9(exprsString);

	/*
	 * Run the expressions through eval_const_expressions. This is not just an
	 * optimization, but is necessary, because the planner will be comparing
	 * them to similarly-processed qual clauses, and may fail to detect valid
	 * matches without this.  We must not use canonicalize_qual, however,
	 * since these aren't qual expressions.
	 */
	result = (List *) FUNC5(NULL, (Node *) result);

	/* May as well fix opfuncids too */
	FUNC6((Node *) result);

	/* Now save a copy of the completed tree in the relcache entry. */
	oldcxt = FUNC2(relation->rd_indexcxt);
	relation->rd_indexprs = FUNC4(result);
	FUNC2(oldcxt);

	return result;
}