#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  indexed_tlist ;
struct TYPE_5__ {int /*<<< orphan*/ * qual; int /*<<< orphan*/ * targetlist; } ;
struct TYPE_6__ {int scanrelid; TYPE_1__ plan; } ;
struct TYPE_7__ {void* indextlist; void* indexorderby; void* indexqual; TYPE_2__ scan; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ IndexOnlyScan ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_VAR ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Plan *
FUNC4(PlannerInfo *root,
							 IndexOnlyScan *plan,
							 int rtoffset)
{
	indexed_tlist *index_itlist;

	index_itlist = FUNC0(plan->indextlist);

	plan->scan.scanrelid += rtoffset;
	plan->scan.plan.targetlist = (List *)
		FUNC2(root,
					   (Node *) plan->scan.plan.targetlist,
					   index_itlist,
					   INDEX_VAR,
					   rtoffset);
	plan->scan.plan.qual = (List *)
		FUNC2(root,
					   (Node *) plan->scan.plan.qual,
					   index_itlist,
					   INDEX_VAR,
					   rtoffset);
	/* indexqual is already transformed to reference index columns */
	plan->indexqual = FUNC1(root, plan->indexqual, rtoffset);
	/* indexorderby is already transformed to reference index columns */
	plan->indexorderby = FUNC1(root, plan->indexorderby, rtoffset);
	/* indextlist must NOT be transformed to reference index columns */
	plan->indextlist = FUNC1(root, plan->indextlist, rtoffset);

	FUNC3(index_itlist);

	return (Plan *) plan;
}