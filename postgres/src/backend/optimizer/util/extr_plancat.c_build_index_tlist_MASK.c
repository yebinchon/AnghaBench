#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
struct TYPE_11__ {int ncolumns; int* indexkeys; int /*<<< orphan*/  indexprs; TYPE_1__* rel; } ;
struct TYPE_10__ {int /*<<< orphan*/  rd_att; } ;
struct TYPE_9__ {int /*<<< orphan*/  relid; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ IndexOptInfo ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_4__ FormData_pg_attribute ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 TYPE_4__* FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC9(PlannerInfo *root, IndexOptInfo *index,
				  Relation heapRelation)
{
	List	   *tlist = NIL;
	Index		varno = index->rel->relid;
	ListCell   *indexpr_item;
	int			i;

	indexpr_item = FUNC5(index->indexprs);
	for (i = 0; i < index->ncolumns; i++)
	{
		int			indexkey = index->indexkeys[i];
		Expr	   *indexvar;

		if (indexkey != 0)
		{
			/* simple column */
			const FormData_pg_attribute *att_tup;

			if (indexkey < 0)
				att_tup = FUNC0(indexkey);
			else
				att_tup = FUNC1(heapRelation->rd_att, indexkey - 1);

			indexvar = (Expr *) FUNC8(varno,
										indexkey,
										att_tup->atttypid,
										att_tup->atttypmod,
										att_tup->attcollation,
										0);
		}
		else
		{
			/* expression column */
			if (indexpr_item == NULL)
				FUNC2(ERROR, "wrong number of index expressions");
			indexvar = (Expr *) FUNC4(indexpr_item);
			indexpr_item = FUNC6(index->indexprs, indexpr_item);
		}

		tlist = FUNC3(tlist,
						FUNC7(indexvar,
										i + 1,
										NULL,
										false));
	}
	if (indexpr_item != NULL)
		FUNC2(ERROR, "wrong number of index expressions");

	return tlist;
}