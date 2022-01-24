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
struct TYPE_6__ {scalar_t__ pid; scalar_t__ roleId; scalar_t__ isBackgroundWorker; } ;
struct TYPE_5__ {int numProcs; int* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGPROC ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 TYPE_2__* allProcs ; 
 TYPE_1__* procArray ; 

int
FUNC2(Oid roleid)
{
	ProcArrayStruct *arrayP = procArray;
	int			count = 0;
	int			index;

	FUNC0(ProcArrayLock, LW_SHARED);

	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGPROC	   *proc = &allProcs[pgprocno];

		if (proc->pid == 0)
			continue;			/* do not count prepared xacts */
		if (proc->isBackgroundWorker)
			continue;			/* do not count background workers */
		if (proc->roleId == roleid)
			count++;
	}

	FUNC1(ProcArrayLock);

	return count;
}