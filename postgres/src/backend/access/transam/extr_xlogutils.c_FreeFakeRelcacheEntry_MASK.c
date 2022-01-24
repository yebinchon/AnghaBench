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
struct TYPE_4__ {int /*<<< orphan*/ * rd_smgr; } ;
typedef  TYPE_1__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void
FUNC2(Relation fakerel)
{
	/* make sure the fakerel is not referenced by the SmgrRelation anymore */
	if (fakerel->rd_smgr != NULL)
		FUNC1(&fakerel->rd_smgr, fakerel->rd_smgr);
	FUNC0(fakerel);
}