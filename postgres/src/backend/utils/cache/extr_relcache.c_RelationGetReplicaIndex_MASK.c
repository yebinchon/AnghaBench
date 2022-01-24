#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rd_replidindex; int /*<<< orphan*/  rd_indexvalid; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

Oid
FUNC3(Relation relation)
{
	List	   *ilist;

	if (!relation->rd_indexvalid)
	{
		/* RelationGetIndexList does the heavy lifting. */
		ilist = FUNC1(relation);
		FUNC2(ilist);
		FUNC0(relation->rd_indexvalid);
	}

	return relation->rd_replidindex;
}