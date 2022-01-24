#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  localTransactionId; int /*<<< orphan*/  backendId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_15__ {scalar_t__ pid; scalar_t__ databaseId; } ;
struct TYPE_14__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_13__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef  TYPE_2__ ProcArrayStruct ;
typedef  TYPE_3__ PGXACT ;
typedef  TYPE_4__ PGPROC ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_4__) ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  InvalidLocalTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 TYPE_3__* allPgXact ; 
 TYPE_4__* allProcs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 TYPE_2__* procArray ; 

VirtualTransactionId *
FUNC12(TransactionId limitXmin, Oid dbOid)
{
	static VirtualTransactionId *vxids;
	ProcArrayStruct *arrayP = procArray;
	int			count = 0;
	int			index;

	/*
	 * If first time through, get workspace to remember main XIDs in. We
	 * malloc it permanently to avoid repeated palloc/pfree overhead. Allow
	 * result space, remembering room for a terminator.
	 */
	if (vxids == NULL)
	{
		vxids = (VirtualTransactionId *)
			FUNC11(sizeof(VirtualTransactionId) * (arrayP->maxProcs + 1));
		if (vxids == NULL)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_OUT_OF_MEMORY),
					 FUNC10("out of memory")));
	}

	FUNC1(ProcArrayLock, LW_SHARED);

	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGPROC	   *proc = &allProcs[pgprocno];
		PGXACT	   *pgxact = &allPgXact[pgprocno];

		/* Exclude prepared transactions */
		if (proc->pid == 0)
			continue;

		if (!FUNC3(dbOid) ||
			proc->databaseId == dbOid)
		{
			/* Fetch xmin just once - can't change on us, but good coding */
			TransactionId pxmin = FUNC6(pgxact->xmin);

			/*
			 * We ignore an invalid pxmin because this means that backend has
			 * no snapshot currently. We hold a Share lock to avoid contention
			 * with users taking snapshots.  That is not a problem because the
			 * current xmin is always at least one higher than the latest
			 * removed xid, so any new snapshot would never conflict with the
			 * test here.
			 */
			if (!FUNC5(limitXmin) ||
				(FUNC5(pxmin) && !FUNC4(pxmin, limitXmin)))
			{
				VirtualTransactionId vxid;

				FUNC0(vxid, *proc);
				if (FUNC7(vxid))
					vxids[count++] = vxid;
			}
		}
	}

	FUNC2(ProcArrayLock);

	/* add the terminator */
	vxids[count].backendId = InvalidBackendId;
	vxids[count].localTransactionId = InvalidLocalTransactionId;

	return vxids;
}