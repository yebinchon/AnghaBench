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
struct TYPE_3__ {int relid; int /*<<< orphan*/ * partition_qual; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Relation relation, RelOptInfo *rel)
{
	List	   *partconstr;

	if (rel->partition_qual)	/* already done */
		return;

	/*
	 * Run the partition quals through const-simplification similar to check
	 * constraints.  We skip canonicalize_qual, though, because partition
	 * quals should be in canonical form already; also, since the qual is in
	 * implicit-AND format, we'd have to explicitly convert it to explicit-AND
	 * format and back again.
	 */
	partconstr = FUNC1(relation);
	if (partconstr)
	{
		partconstr = (List *) FUNC2((Expr *) partconstr);
		if (rel->relid != 1)
			FUNC0((Node *) partconstr, 1, rel->relid, 0);
		rel->partition_qual = partconstr;
	}
}