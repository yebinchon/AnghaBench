#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  PartitionKey ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

bool
FUNC10(Relation rel, Bitmapset *attnums, bool *used_in_expr)
{
	PartitionKey key;
	int			partnatts;
	List	   *partexprs;
	ListCell   *partexprs_item;
	int			i;

	if (attnums == NULL || rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
		return false;

	key = FUNC0(rel);
	partnatts = FUNC5(key);
	partexprs = FUNC4(key);

	partexprs_item = FUNC7(partexprs);
	for (i = 0; i < partnatts; i++)
	{
		AttrNumber	partattno = FUNC3(key, i);

		if (partattno != 0)
		{
			if (FUNC1(partattno - FirstLowInvalidHeapAttributeNumber,
							  attnums))
			{
				if (used_in_expr)
					*used_in_expr = false;
				return true;
			}
		}
		else
		{
			/* Arbitrary expression */
			Node	   *expr = (Node *) FUNC6(partexprs_item);
			Bitmapset  *expr_attrs = NULL;

			/* Find all attributes referenced */
			FUNC9(expr, 1, &expr_attrs);
			partexprs_item = FUNC8(partexprs, partexprs_item);

			if (FUNC2(attnums, expr_attrs))
			{
				if (used_in_expr)
					*used_in_expr = true;
				return true;
			}
		}
	}

	return false;
}