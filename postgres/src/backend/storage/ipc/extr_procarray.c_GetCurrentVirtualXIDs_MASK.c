#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_11__ {scalar_t__ databaseId; } ;
struct TYPE_10__ {int vacuumFlags; int /*<<< orphan*/  xmin; } ;
struct TYPE_9__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGXACT ;
typedef  TYPE_3__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ MyDatabaseId ; 
 TYPE_3__* MyProc ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* allPgXact ; 
 TYPE_3__* allProcs ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* procArray ; 

VirtualTransactionId *
FUNC8(TransactionId limitXmin, bool excludeXmin0,
					  bool allDbs, int excludeVacuum,
					  int *nvxids)
{
	VirtualTransactionId *vxids;
	ProcArrayStruct *arrayP = procArray;
	int			count = 0;
	int			index;

	/* allocate what's certainly enough result space */
	vxids = (VirtualTransactionId *)
		FUNC7(sizeof(VirtualTransactionId) * arrayP->maxProcs);

	FUNC1(ProcArrayLock, LW_SHARED);

	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGPROC	   *proc = &allProcs[pgprocno];
		PGXACT	   *pgxact = &allPgXact[pgprocno];

		if (proc == MyProc)
			continue;

		if (excludeVacuum & pgxact->vacuumFlags)
			continue;

		if (allDbs || proc->databaseId == MyDatabaseId)
		{
			/* Fetch xmin just once - might change on us */
			TransactionId pxmin = FUNC5(pgxact->xmin);

			if (excludeXmin0 && !FUNC3(pxmin))
				continue;

			/*
			 * InvalidTransactionId precedes all other XIDs, so a proc that
			 * hasn't set xmin yet will not be rejected by this test.
			 */
			if (!FUNC3(limitXmin) ||
				FUNC4(pxmin, limitXmin))
			{
				VirtualTransactionId vxid;

				FUNC0(vxid, *proc);
				if (FUNC6(vxid))
					vxids[count++] = vxid;
			}
		}
	}

	FUNC2(ProcArrayLock);

	*nvxids = count;
	return vxids;
}