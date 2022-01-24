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
struct TYPE_7__ {int partnatts; scalar_t__* partattrs; int /*<<< orphan*/  partexprs; int /*<<< orphan*/ * parttypcoll; int /*<<< orphan*/ * parttypmod; int /*<<< orphan*/ * parttypid; } ;
struct TYPE_6__ {scalar_t__ relid; int /*<<< orphan*/ ** nullable_partexprs; int /*<<< orphan*/ ** partexprs; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__* PartitionKey ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ Index ;
typedef  int /*<<< orphan*/  Expr ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ InvalidAttrNumber ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(Relation relation,
								RelOptInfo *rel)
{
	PartitionKey partkey = FUNC3(relation);
	int			partnatts;
	int			cnt;
	List	  **partexprs;
	ListCell   *lc;
	Index		varno = rel->relid;

	FUNC0(FUNC2(rel) && rel->relid > 0);

	/* A partitioned table should have a partition key. */
	FUNC0(partkey != NULL);

	partnatts = partkey->partnatts;
	partexprs = (List **) FUNC11(sizeof(List *) * partnatts);
	lc = FUNC7(partkey->partexprs);

	for (cnt = 0; cnt < partnatts; cnt++)
	{
		Expr	   *partexpr;
		AttrNumber	attno = partkey->partattrs[cnt];

		if (attno != InvalidAttrNumber)
		{
			/* Single column partition key is stored as a Var node. */
			FUNC0(attno > 0);

			partexpr = (Expr *) FUNC10(varno, attno,
										partkey->parttypid[cnt],
										partkey->parttypmod[cnt],
										partkey->parttypcoll[cnt], 0);
		}
		else
		{
			if (lc == NULL)
				FUNC5(ERROR, "wrong number of partition key expressions");

			/* Re-stamp the expression with given varno. */
			partexpr = (Expr *) FUNC4(FUNC6(lc));
			FUNC1((Node *) partexpr, 1, varno, 0);
			lc = FUNC9(partkey->partexprs, lc);
		}

		partexprs[cnt] = FUNC8(partexpr);
	}

	rel->partexprs = partexprs;

	/*
	 * A base relation can not have nullable partition key expressions. We
	 * still allocate array of empty expressions lists to keep partition key
	 * expression handling code simple. See build_joinrel_partition_info() and
	 * match_expr_to_partition_keys().
	 */
	rel->nullable_partexprs = (List **) FUNC12(sizeof(List *) * partnatts);
}