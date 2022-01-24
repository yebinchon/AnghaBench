#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  rd_smgr; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int /*<<< orphan*/  reltoastrelid; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(Relation rel)
{
	/* non-WAL-logged tables never need fsync */
	if (!FUNC2(rel))
		return;

	/* main heap */
	FUNC0(rel);
	/* FlushRelationBuffers will have opened rd_smgr */
	FUNC3(rel->rd_smgr, MAIN_FORKNUM);

	/* FSM is not critical, don't bother syncing it */

	/* toast heap, if any */
	if (FUNC1(rel->rd_rel->reltoastrelid))
	{
		Relation	toastrel;

		toastrel = FUNC5(rel->rd_rel->reltoastrelid, AccessShareLock);
		FUNC0(toastrel);
		FUNC3(toastrel->rd_smgr, MAIN_FORKNUM);
		FUNC4(toastrel, AccessShareLock);
	}
}