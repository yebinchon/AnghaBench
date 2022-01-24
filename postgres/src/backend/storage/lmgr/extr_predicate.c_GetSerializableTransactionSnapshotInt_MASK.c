#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
struct TYPE_22__ {int /*<<< orphan*/  lastCommitBeforeSnapshot; } ;
struct TYPE_24__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  finishedLink; int /*<<< orphan*/  predicateLocks; int /*<<< orphan*/  pid; int /*<<< orphan*/  xmin; int /*<<< orphan*/  finishedBefore; int /*<<< orphan*/  topXid; int /*<<< orphan*/  possibleUnsafeConflicts; int /*<<< orphan*/  inConflicts; int /*<<< orphan*/  outConflicts; void* commitSeqNo; void* prepareSeqNo; TYPE_1__ SeqNo; int /*<<< orphan*/  vxid; } ;
struct TYPE_23__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_21__ {scalar_t__ WritableSxactCount; int SxactGlobalXminCount; int /*<<< orphan*/  LastSxactCommitSeqNo; int /*<<< orphan*/  SxactGlobalXmin; } ;
typedef  TYPE_2__* Snapshot ;
typedef  TYPE_3__ SERIALIZABLEXACT ;
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* InvalidSerCommitSeqNo ; 
 TYPE_3__* InvalidSerializableXact ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MaxBackends ; 
 int /*<<< orphan*/ * MyProc ; 
 int /*<<< orphan*/  MyProcPid ; 
 TYPE_3__* MySerializableXact ; 
 int MyXactDidWrite ; 
 TYPE_3__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_10__* PredXact ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SXACT_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ XactReadOnly ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 scalar_t__ max_prepared_xacts ; 

__attribute__((used)) static Snapshot
FUNC30(Snapshot snapshot,
									  VirtualTransactionId *sourcevxid,
									  int sourcepid)
{
	PGPROC	   *proc;
	VirtualTransactionId vxid;
	SERIALIZABLEXACT *sxact,
			   *othersxact;

	/* We only do this for serializable transactions.  Once. */
	FUNC0(MySerializableXact == InvalidSerializableXact);

	FUNC0(!FUNC13());

	/*
	 * Since all parts of a serializable transaction must use the same
	 * snapshot, it is too late to establish one after a parallel operation
	 * has begun.
	 */
	if (FUNC7())
		FUNC25(ERROR, "cannot establish serializable snapshot during a parallel operation");

	proc = MyProc;
	FUNC0(proc != NULL);
	FUNC4(vxid, *proc);

	/*
	 * First we get the sxact structure, which may involve looping and access
	 * to the "finished" list to free a structure for use.
	 *
	 * We must hold SerializableXactHashLock when taking/checking the snapshot
	 * to avoid race conditions, for much the same reasons that
	 * GetSnapshotData takes the ProcArrayLock.  Since we might have to
	 * release SerializableXactHashLock to call SummarizeOldestCommittedSxact,
	 * this means we have to create the sxact first, which is a bit annoying
	 * (in particular, an elog(ERROR) in procarray.c would cause us to leak
	 * the sxact).  Consider refactoring to avoid this.
	 */
#ifdef TEST_OLDSERXID
	SummarizeOldestCommittedSxact();
#endif
	FUNC8(SerializableXactHashLock, LW_EXCLUSIVE);
	do
	{
		sxact = FUNC2();
		/* If null, push out committed sxact to SLRU summary & retry. */
		if (!sxact)
		{
			FUNC9(SerializableXactHashLock);
			FUNC18();
			FUNC8(SerializableXactHashLock, LW_EXCLUSIVE);
		}
	} while (!sxact);

	/* Get the snapshot, or check that it's safe to use */
	if (!sourcevxid)
		snapshot = FUNC5(snapshot);
	else if (!FUNC12(snapshot->xmin, sourcevxid))
	{
		FUNC14(sxact);
		FUNC9(SerializableXactHashLock);
		FUNC26(ERROR,
				(FUNC27(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC29("could not import the requested snapshot"),
				 FUNC28("The source process with PID %d is not running anymore.",
						   sourcepid)));
	}

	/*
	 * If there are no serializable transactions which are not read-only, we
	 * can "opt out" of predicate locking and conflict checking for a
	 * read-only transaction.
	 *
	 * The reason this is safe is that a read-only transaction can only become
	 * part of a dangerous structure if it overlaps a writable transaction
	 * which in turn overlaps a writable transaction which committed before
	 * the read-only transaction started.  A new writable transaction can
	 * overlap this one, but it can't meet the other condition of overlapping
	 * a transaction which committed before this one started.
	 */
	if (XactReadOnly && PredXact->WritableSxactCount == 0)
	{
		FUNC14(sxact);
		FUNC9(SerializableXactHashLock);
		return snapshot;
	}

	/* Maintain serializable global xmin info. */
	if (!FUNC24(PredXact->SxactGlobalXmin))
	{
		FUNC0(PredXact->SxactGlobalXminCount == 0);
		PredXact->SxactGlobalXmin = snapshot->xmin;
		PredXact->SxactGlobalXminCount = 1;
		FUNC11(snapshot->xmin);
	}
	else if (FUNC22(snapshot->xmin, PredXact->SxactGlobalXmin))
	{
		FUNC0(PredXact->SxactGlobalXminCount > 0);
		PredXact->SxactGlobalXminCount++;
	}
	else
	{
		FUNC0(FUNC23(snapshot->xmin, PredXact->SxactGlobalXmin));
	}

	/* Initialize the structure. */
	sxact->vxid = vxid;
	sxact->SeqNo.lastCommitBeforeSnapshot = PredXact->LastSxactCommitSeqNo;
	sxact->prepareSeqNo = InvalidSerCommitSeqNo;
	sxact->commitSeqNo = InvalidSerCommitSeqNo;
	FUNC16(&(sxact->outConflicts));
	FUNC16(&(sxact->inConflicts));
	FUNC16(&(sxact->possibleUnsafeConflicts));
	sxact->topXid = FUNC6();
	sxact->finishedBefore = InvalidTransactionId;
	sxact->xmin = snapshot->xmin;
	sxact->pid = MyProcPid;
	FUNC16(&(sxact->predicateLocks));
	FUNC15(&(sxact->finishedLink));
	sxact->flags = 0;
	if (XactReadOnly)
	{
		sxact->flags |= SXACT_FLAG_READ_ONLY;

		/*
		 * Register all concurrent r/w transactions as possible conflicts; if
		 * all of them commit without any outgoing conflicts to earlier
		 * transactions then this snapshot can be deemed safe (and we can run
		 * without tracking predicate locks).
		 */
		for (othersxact = FUNC3();
			 othersxact != NULL;
			 othersxact = FUNC10(othersxact))
		{
			if (!FUNC19(othersxact)
				&& !FUNC20(othersxact)
				&& !FUNC21(othersxact))
			{
				FUNC17(sxact, othersxact);
			}
		}
	}
	else
	{
		++(PredXact->WritableSxactCount);
		FUNC0(PredXact->WritableSxactCount <=
			   (MaxBackends + max_prepared_xacts));
	}

	MySerializableXact = sxact;
	MyXactDidWrite = false;		/* haven't written anything yet */

	FUNC9(SerializableXactHashLock);

	FUNC1();

	return snapshot;
}