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
typedef  int /*<<< orphan*/  hash_ctl ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  PGSTAT_TAB_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HTAB *
FUNC15(Oid catalogid, AttrNumber anum_oid)
{
	HTAB	   *htab;
	HASHCTL		hash_ctl;
	Relation	rel;
	TableScanDesc scan;
	HeapTuple	tup;
	Snapshot	snapshot;

	FUNC10(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(Oid);
	hash_ctl.entrysize = sizeof(Oid);
	hash_ctl.hcxt = CurrentMemoryContext;
	htab = FUNC6("Temporary table of OIDs",
					   PGSTAT_TAB_HASH_SIZE,
					   &hash_ctl,
					   HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	rel = FUNC14(catalogid, AccessShareLock);
	snapshot = FUNC3(FUNC2());
	scan = FUNC11(rel, snapshot, 0, NULL);
	while ((tup = FUNC9(scan, ForwardScanDirection)) != NULL)
	{
		Oid			thisoid;
		bool		isnull;

		thisoid = FUNC8(tup, anum_oid, FUNC4(rel), &isnull);
		FUNC0(!isnull);

		FUNC1();

		(void) FUNC7(htab, (void *) &thisoid, HASH_ENTER, NULL);
	}
	FUNC13(scan);
	FUNC5(snapshot);
	FUNC12(rel, AccessShareLock);

	return htab;
}