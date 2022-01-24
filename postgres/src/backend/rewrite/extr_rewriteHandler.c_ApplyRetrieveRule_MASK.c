#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
struct TYPE_24__ {scalar_t__ relid; int inh; int /*<<< orphan*/ * extraUpdatedCols; int /*<<< orphan*/ * updatedCols; int /*<<< orphan*/ * insertedCols; int /*<<< orphan*/ * selectedCols; void* checkAsUser; scalar_t__ requiredPerms; int /*<<< orphan*/ * tablesample; scalar_t__ rellockmode; scalar_t__ relkind; int /*<<< orphan*/  security_barrier; TYPE_6__* subquery; int /*<<< orphan*/  rtekind; } ;
typedef  TYPE_1__ TargetEntry ;
struct TYPE_28__ {int resultRelation; scalar_t__ commandType; void* rtable; scalar_t__ jointree; void* targetList; TYPE_1__* returningList; } ;
struct TYPE_27__ {scalar_t__ rd_id; } ;
struct TYPE_26__ {void* actions; int /*<<< orphan*/ * qual; } ;
struct TYPE_25__ {int /*<<< orphan*/  waitPolicy; int /*<<< orphan*/  strength; } ;
typedef  TYPE_2__ RowMarkClause ;
typedef  TYPE_3__ RewriteRule ;
typedef  TYPE_4__* Relation ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_6__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ CMD_DELETE ; 
 scalar_t__ CMD_INSERT ; 
 scalar_t__ CMD_UPDATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 void* InvalidOid ; 
 int PRS2_OLD_VARNO ; 
 int /*<<< orphan*/  RTE_SUBQUERY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_6__* FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_6__*,int) ; 
 void* FUNC8 (void*,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_1__* FUNC15 (int,void*) ; 

__attribute__((used)) static Query *
FUNC16(Query *parsetree,
				  RewriteRule *rule,
				  int rt_index,
				  Relation relation,
				  List *activeRIRs)
{
	Query	   *rule_action;
	RangeTblEntry *rte,
			   *subrte;
	RowMarkClause *rc;

	if (FUNC10(rule->actions) != 1)
		FUNC5(ERROR, "expected just one rule action");
	if (rule->qual != NULL)
		FUNC5(ERROR, "cannot handle qualified ON SELECT rule");

	if (rt_index == parsetree->resultRelation)
	{
		/*
		 * We have a view as the result relation of the query, and it wasn't
		 * rewritten by any rule.  This case is supported if there is an
		 * INSTEAD OF trigger that will trap attempts to insert/update/delete
		 * view rows.  The executor will check that; for the moment just plow
		 * ahead.  We have two cases:
		 *
		 * For INSERT, we needn't do anything.  The unmodified RTE will serve
		 * fine as the result relation.
		 *
		 * For UPDATE/DELETE, we need to expand the view so as to have source
		 * data for the operation.  But we also need an unmodified RTE to
		 * serve as the target.  So, copy the RTE and add the copy to the
		 * rangetable.  Note that the copy does not get added to the jointree.
		 * Also note that there's a hack in fireRIRrules to avoid calling this
		 * function again when it arrives at the copied RTE.
		 */
		if (parsetree->commandType == CMD_INSERT)
			return parsetree;
		else if (parsetree->commandType == CMD_UPDATE ||
				 parsetree->commandType == CMD_DELETE)
		{
			RangeTblEntry *newrte;
			Var		   *var;
			TargetEntry *tle;

			rte = FUNC15(rt_index, parsetree->rtable);
			newrte = FUNC4(rte);
			parsetree->rtable = FUNC8(parsetree->rtable, newrte);
			parsetree->resultRelation = FUNC10(parsetree->rtable);

			/*
			 * There's no need to do permissions checks twice, so wipe out the
			 * permissions info for the original RTE (we prefer to keep the
			 * bits set on the result RTE).
			 */
			rte->requiredPerms = 0;
			rte->checkAsUser = InvalidOid;
			rte->selectedCols = NULL;
			rte->insertedCols = NULL;
			rte->updatedCols = NULL;

			/*
			 * For the most part, Vars referencing the view should remain as
			 * they are, meaning that they implicitly represent OLD values.
			 * But in the RETURNING list if any, we want such Vars to
			 * represent NEW values, so change them to reference the new RTE.
			 *
			 * Since ChangeVarNodes scribbles on the tree in-place, copy the
			 * RETURNING list first for safety.
			 */
			parsetree->returningList = FUNC4(parsetree->returningList);
			FUNC2((Node *) parsetree->returningList, rt_index,
						   parsetree->resultRelation, 0);

			/*
			 * To allow the executor to compute the original view row to pass
			 * to the INSTEAD OF trigger, we add a resjunk whole-row Var
			 * referencing the original RTE.  This will later get expanded
			 * into a RowExpr computing all the OLD values of the view row.
			 */
			var = FUNC12(rte, rt_index, 0, false);
			tle = FUNC11((Expr *) var,
								  FUNC10(parsetree->targetList) + 1,
								  FUNC14("wholerow"),
								  true);

			parsetree->targetList = FUNC8(parsetree->targetList, tle);

			/* Now, continue with expanding the original view RTE */
		}
		else
			FUNC5(ERROR, "unrecognized commandType: %d",
				 (int) parsetree->commandType);
	}

	/*
	 * Check if there's a FOR [KEY] UPDATE/SHARE clause applying to this view.
	 *
	 * Note: we needn't explicitly consider any such clauses appearing in
	 * ancestor query levels; their effects have already been pushed down to
	 * here by markQueryForLocking, and will be reflected in "rc".
	 */
	rc = FUNC7(parsetree, rt_index);

	/*
	 * Make a modifiable copy of the view query, and acquire needed locks on
	 * the relations it mentions.  Force at least RowShareLock for all such
	 * rels if there's a FOR [KEY] UPDATE/SHARE clause affecting this view.
	 */
	rule_action = FUNC4(FUNC9(rule->actions));

	FUNC0(rule_action, true, (rc != NULL));

	/*
	 * If FOR [KEY] UPDATE/SHARE of view, mark all the contained tables as
	 * implicit FOR [KEY] UPDATE/SHARE, the same as the parser would have done
	 * if the view's subquery had been written out explicitly.
	 */
	if (rc != NULL)
		FUNC13(rule_action, (Node *) rule_action->jointree,
							rc->strength, rc->waitPolicy, true);

	/*
	 * Recursively expand any view references inside the view.
	 *
	 * Note: this must happen after markQueryForLocking.  That way, any UPDATE
	 * permission bits needed for sub-views are initially applied to their
	 * RTE_RELATION RTEs by markQueryForLocking, and then transferred to their
	 * OLD rangetable entries by the action below (in a recursive call of this
	 * routine).
	 */
	rule_action = FUNC6(rule_action, activeRIRs);

	/*
	 * Now, plug the view query in as a subselect, converting the relation's
	 * original RTE to a subquery RTE.
	 */
	rte = FUNC15(rt_index, parsetree->rtable);

	rte->rtekind = RTE_SUBQUERY;
	rte->subquery = rule_action;
	rte->security_barrier = FUNC3(relation);
	/* Clear fields that should not be set in a subquery RTE */
	rte->relid = InvalidOid;
	rte->relkind = 0;
	rte->rellockmode = 0;
	rte->tablesample = NULL;
	rte->inh = false;			/* must not be set for a subquery */

	/*
	 * We move the view's permission check data down to its rangetable. The
	 * checks will actually be done against the OLD entry therein.
	 */
	subrte = FUNC15(PRS2_OLD_VARNO, rule_action->rtable);
	FUNC1(subrte->relid == relation->rd_id);
	subrte->requiredPerms = rte->requiredPerms;
	subrte->checkAsUser = rte->checkAsUser;
	subrte->selectedCols = rte->selectedCols;
	subrte->insertedCols = rte->insertedCols;
	subrte->updatedCols = rte->updatedCols;
	subrte->extraUpdatedCols = rte->extraUpdatedCols;

	rte->requiredPerms = 0;		/* no permission check on subquery itself */
	rte->checkAsUser = InvalidOid;
	rte->selectedCols = NULL;
	rte->insertedCols = NULL;
	rte->updatedCols = NULL;
	rte->extraUpdatedCols = NULL;

	return parsetree;
}