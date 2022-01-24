#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  inhrelid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_inherits ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhparent ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InheritsParentIndexId ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oid_cmp ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC17(Oid parentrelId, LOCKMODE lockmode)
{
	List	   *list = NIL;
	Relation	relation;
	SysScanDesc scan;
	ScanKeyData key[1];
	HeapTuple	inheritsTuple;
	Oid			inhrelid;
	Oid		   *oidarr;
	int			maxoids,
				numoids,
				i;

	/*
	 * Can skip the scan if pg_class shows the relation has never had a
	 * subclass.
	 */
	if (!FUNC6(parentrelId))
		return NIL;

	/*
	 * Scan pg_inherits and build a working array of subclass OIDs.
	 */
	maxoids = 32;
	oidarr = (Oid *) FUNC8(maxoids * sizeof(Oid));
	numoids = 0;

	relation = FUNC16(InheritsRelationId, AccessShareLock);

	FUNC3(&key[0],
				Anum_pg_inherits_inhparent,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(parentrelId));

	scan = FUNC12(relation, InheritsParentIndexId, true,
							  NULL, 1, key);

	while ((inheritsTuple = FUNC14(scan)) != NULL)
	{
		inhrelid = ((Form_pg_inherits) FUNC0(inheritsTuple))->inhrelid;
		if (numoids >= maxoids)
		{
			maxoids *= 2;
			oidarr = (Oid *) FUNC11(oidarr, maxoids * sizeof(Oid));
		}
		oidarr[numoids++] = inhrelid;
	}

	FUNC13(scan);

	FUNC15(relation, AccessShareLock);

	/*
	 * If we found more than one child, sort them by OID.  This ensures
	 * reasonably consistent behavior regardless of the vagaries of an
	 * indexscan.  This is important since we need to be sure all backends
	 * lock children in the same order to avoid needless deadlocks.
	 */
	if (numoids > 1)
		FUNC10(oidarr, numoids, sizeof(Oid), oid_cmp);

	/*
	 * Acquire locks and build the result list.
	 */
	for (i = 0; i < numoids; i++)
	{
		inhrelid = oidarr[i];

		if (lockmode != NoLock)
		{
			/* Get the lock to synchronize against concurrent drop */
			FUNC1(inhrelid, lockmode);

			/*
			 * Now that we have the lock, double-check to see if the relation
			 * really exists or not.  If not, assume it was dropped while we
			 * waited to acquire lock, and ignore it.
			 */
			if (!FUNC4(RELOID, FUNC2(inhrelid)))
			{
				/* Release useless lock */
				FUNC5(inhrelid, lockmode);
				/* And ignore this relation */
				continue;
			}
		}

		list = FUNC7(list, inhrelid);
	}

	FUNC9(oidarr);

	return list;
}