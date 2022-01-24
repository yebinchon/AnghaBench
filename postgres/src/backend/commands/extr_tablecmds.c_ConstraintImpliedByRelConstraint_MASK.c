#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_check; TYPE_1__* check; } ;
typedef  TYPE_2__ TupleConstr ;
struct TYPE_6__ {TYPE_2__* constr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ccbin; int /*<<< orphan*/  ccvalid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

bool
FUNC8(Relation scanrel, List *testConstraint, List *provenConstraint)
{
	List	   *existConstraint = FUNC4(provenConstraint);
	TupleConstr *constr = FUNC0(scanrel)->constr;
	int			num_check,
				i;

	num_check = (constr != NULL) ? constr->num_check : 0;
	for (i = 0; i < num_check; i++)
	{
		Node	   *cexpr;

		/*
		 * If this constraint hasn't been fully validated yet, we must ignore
		 * it here.
		 */
		if (!constr->check[i].ccvalid)
			continue;

		cexpr = FUNC7(constr->check[i].ccbin);

		/*
		 * Run each expression through const-simplification and
		 * canonicalization.  It is necessary, because we will be comparing it
		 * to similarly-processed partition constraint expressions, and may
		 * fail to detect valid matches without this.
		 */
		cexpr = FUNC2(NULL, cexpr);
		cexpr = (Node *) FUNC1((Expr *) cexpr, true);

		existConstraint = FUNC3(existConstraint,
									  FUNC5((Expr *) cexpr));
	}

	/*
	 * Try to make the proof.  Since we are comparing CHECK constraints, we
	 * need to use weak implication, i.e., we assume existConstraint is
	 * not-false and try to prove the same for testConstraint.
	 *
	 * Note that predicate_implied_by assumes its first argument is known
	 * immutable.  That should always be true for both NOT NULL and partition
	 * constraints, so we don't test it here.
	 */
	return FUNC6(testConstraint, existConstraint, true);
}