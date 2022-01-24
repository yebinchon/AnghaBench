#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ relam; scalar_t__* opfamily; scalar_t__* indexcollations; TYPE_1__* rel; } ;
struct TYPE_12__ {scalar_t__ clause; } ;
struct TYPE_11__ {int /*<<< orphan*/  inputcollids; int /*<<< orphan*/  opnos; int /*<<< orphan*/  rargs; int /*<<< orphan*/  largs; } ;
struct TYPE_10__ {int /*<<< orphan*/  relid; } ;
typedef  TYPE_2__ RowCompareExpr ;
typedef  TYPE_3__ RestrictInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_4__ IndexOptInfo ;
typedef  int /*<<< orphan*/  IndexClause ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
#define  BTGreaterEqualStrategyNumber 131 
#define  BTGreaterStrategyNumber 130 
#define  BTLessEqualStrategyNumber 129 
#define  BTLessStrategyNumber 128 
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int,TYPE_4__*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IndexClause *
FUNC10(RestrictInfo *rinfo,
							 int indexcol,
							 IndexOptInfo *index)
{
	RowCompareExpr *clause = (RowCompareExpr *) rinfo->clause;
	Index		index_relid;
	Oid			opfamily;
	Oid			idxcollation;
	Node	   *leftop,
			   *rightop;
	bool		var_on_left;
	Oid			expr_op;
	Oid			expr_coll;

	/* Forget it if we're not dealing with a btree index */
	if (index->relam != BTREE_AM_OID)
		return NULL;

	index_relid = index->rel->relid;
	opfamily = index->opfamily[indexcol];
	idxcollation = index->indexcollations[indexcol];

	/*
	 * We could do the matching on the basis of insisting that the opfamily
	 * shown in the RowCompareExpr be the same as the index column's opfamily,
	 * but that could fail in the presence of reverse-sort opfamilies: it'd be
	 * a matter of chance whether RowCompareExpr had picked the forward or
	 * reverse-sort family.  So look only at the operator, and match if it is
	 * a member of the index's opfamily (after commutation, if the indexkey is
	 * on the right).  We'll worry later about whether any additional
	 * operators are matchable to the index.
	 */
	leftop = (Node *) FUNC6(clause->largs);
	rightop = (Node *) FUNC6(clause->rargs);
	expr_op = FUNC7(clause->opnos);
	expr_coll = FUNC7(clause->inputcollids);

	/* Collations must match, if relevant */
	if (!FUNC0(idxcollation, expr_coll))
		return NULL;

	/*
	 * These syntactic tests are the same as in match_opclause_to_indexcol()
	 */
	if (FUNC8(leftop, indexcol, index) &&
		!FUNC1(index_relid, FUNC9(rightop)) &&
		!FUNC2(rightop))
	{
		/* OK, indexkey is on left */
		var_on_left = true;
	}
	else if (FUNC8(rightop, indexcol, index) &&
			 !FUNC1(index_relid, FUNC9(leftop)) &&
			 !FUNC2(leftop))
	{
		/* indexkey is on right, so commute the operator */
		expr_op = FUNC4(expr_op);
		if (expr_op == InvalidOid)
			return NULL;
		var_on_left = false;
	}
	else
		return NULL;

	/* We're good if the operator is the right type of opfamily member */
	switch (FUNC5(expr_op, opfamily))
	{
		case BTLessStrategyNumber:
		case BTLessEqualStrategyNumber:
		case BTGreaterEqualStrategyNumber:
		case BTGreaterStrategyNumber:
			return FUNC3(rinfo,
											   indexcol,
											   index,
											   expr_op,
											   var_on_left);
	}

	return NULL;
}