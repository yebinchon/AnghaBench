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
typedef  int /*<<< orphan*/  VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ delayChkpt; } ;
struct TYPE_5__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGXACT ;
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* allPgXact ; 
 int /*<<< orphan*/ * allProcs ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* procArray ; 

VirtualTransactionId *
FUNC5(int *nvxids)
{
	VirtualTransactionId *vxids;
	ProcArrayStruct *arrayP = procArray;
	int			count = 0;
	int			index;

	/* allocate what's certainly enough result space */
	vxids = (VirtualTransactionId *)
		FUNC4(sizeof(VirtualTransactionId) * arrayP->maxProcs);

	FUNC1(ProcArrayLock, LW_SHARED);

	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGPROC	   *proc = &allProcs[pgprocno];
		PGXACT	   *pgxact = &allPgXact[pgprocno];

		if (pgxact->delayChkpt)
		{
			VirtualTransactionId vxid;

			FUNC0(vxid, *proc);
			if (FUNC3(vxid))
				vxids[count++] = vxid;
		}
	}

	FUNC2(ProcArrayLock);

	*nvxids = count;
	return vxids;
}