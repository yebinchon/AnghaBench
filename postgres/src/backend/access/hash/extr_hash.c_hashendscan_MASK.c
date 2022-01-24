#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ numKilled; struct TYPE_8__* killedItems; int /*<<< orphan*/  currPos; } ;
struct TYPE_7__ {int /*<<< orphan*/ * opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* HashScanOpaque ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(IndexScanDesc scan)
{
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	Relation	rel = scan->indexRelation;

	if (FUNC0(so->currPos))
	{
		/* Before leaving current page, deal with any killed items */
		if (so->numKilled > 0)
			FUNC2(scan);
	}

	FUNC1(rel, so);

	if (so->killedItems != NULL)
		FUNC3(so->killedItems);
	FUNC3(so);
	scan->opaque = NULL;
}