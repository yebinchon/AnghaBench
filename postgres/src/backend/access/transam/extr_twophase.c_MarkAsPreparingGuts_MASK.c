#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_11__ {TYPE_1__* allPgXact; TYPE_2__* allProcs; } ;
struct TYPE_10__ {size_t pgprocno; int valid; int inredo; int /*<<< orphan*/  gid; int /*<<< orphan*/  locking_backend; void* owner; void* xid; int /*<<< orphan*/  prepared_at; } ;
struct TYPE_9__ {size_t pgprocno; int isBackgroundWorker; int lwWaiting; int /*<<< orphan*/ * myProcLocks; int /*<<< orphan*/ * waitProcLock; int /*<<< orphan*/ * waitLock; scalar_t__ lwWaitMode; int /*<<< orphan*/  tempNamespaceId; void* roleId; void* databaseId; int /*<<< orphan*/  backendId; scalar_t__ pid; scalar_t__ lxid; int /*<<< orphan*/  waitStatus; int /*<<< orphan*/  links; } ;
struct TYPE_8__ {int delayChkpt; int overflowed; scalar_t__ nxids; scalar_t__ vacuumFlags; int /*<<< orphan*/  xmin; void* xid; } ;
typedef  TYPE_1__ PGXACT ;
typedef  TYPE_2__ PGPROC ;
typedef  void* Oid ;
typedef  scalar_t__ LocalTransactionId ;
typedef  TYPE_3__* GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyBackendId ; 
 TYPE_3__* MyLockedGxact ; 
 int NUM_LOCK_PARTITIONS ; 
 TYPE_4__* ProcGlobal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_OK ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC6(GlobalTransaction gxact, TransactionId xid, const char *gid,
					TimestampTz prepared_at, Oid owner, Oid databaseid)
{
	PGPROC	   *proc;
	PGXACT	   *pgxact;
	int			i;

	FUNC0(FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE));

	FUNC0(gxact != NULL);
	proc = &ProcGlobal->allProcs[gxact->pgprocno];
	pgxact = &ProcGlobal->allPgXact[gxact->pgprocno];

	/* Initialize the PGPROC entry */
	FUNC2(proc, 0, sizeof(PGPROC));
	proc->pgprocno = gxact->pgprocno;
	FUNC3(&(proc->links));
	proc->waitStatus = STATUS_OK;
	/* We set up the gxact's VXID as InvalidBackendId/XID */
	proc->lxid = (LocalTransactionId) xid;
	pgxact->xid = xid;
	pgxact->xmin = InvalidTransactionId;
	pgxact->delayChkpt = false;
	pgxact->vacuumFlags = 0;
	proc->pid = 0;
	proc->backendId = InvalidBackendId;
	proc->databaseId = databaseid;
	proc->roleId = owner;
	proc->tempNamespaceId = InvalidOid;
	proc->isBackgroundWorker = false;
	proc->lwWaiting = false;
	proc->lwWaitMode = 0;
	proc->waitLock = NULL;
	proc->waitProcLock = NULL;
	for (i = 0; i < NUM_LOCK_PARTITIONS; i++)
		FUNC4(&(proc->myProcLocks[i]));
	/* subxid data must be filled later by GXactLoadSubxactData */
	pgxact->overflowed = false;
	pgxact->nxids = 0;

	gxact->prepared_at = prepared_at;
	gxact->xid = xid;
	gxact->owner = owner;
	gxact->locking_backend = MyBackendId;
	gxact->valid = false;
	gxact->inredo = false;
	FUNC5(gxact->gid, gid);

	/*
	 * Remember that we have this GlobalTransaction entry locked for us. If we
	 * abort after this, we must release it.
	 */
	MyLockedGxact = gxact;
}