#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_class_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ClassOidIndexId ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ criticalRelcachesBuilt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HeapTuple
FUNC13(Oid targetRelId, bool indexOK, bool force_non_historic)
{
	HeapTuple	pg_class_tuple;
	Relation	pg_class_desc;
	SysScanDesc pg_class_scan;
	ScanKeyData key[1];
	Snapshot	snapshot;

	/*
	 * If something goes wrong during backend startup, we might find ourselves
	 * trying to read pg_class before we've selected a database.  That ain't
	 * gonna work, so bail out with a useful error message.  If this happens,
	 * it probably means a relcache entry that needs to be nailed isn't.
	 */
	if (!FUNC4(MyDatabaseId))
		FUNC6(FATAL, "cannot read pg_class without having selected a database");

	/*
	 * form a scan key
	 */
	FUNC5(&key[0],
				Anum_pg_class_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(targetRelId));

	/*
	 * Open pg_class and fetch a tuple.  Force heap scan if we haven't yet
	 * built the critical relcache entries (this includes initdb and startup
	 * without a pg_internal.init file).  The caller can also force a heap
	 * scan by setting indexOK == false.
	 */
	pg_class_desc = FUNC12(RelationRelationId, AccessShareLock);

	/*
	 * The caller might need a tuple that's newer than the one the historic
	 * snapshot; currently the only case requiring to do so is looking up the
	 * relfilenode of non mapped system relations during decoding.
	 */
	if (force_non_historic)
		snapshot = FUNC1(RelationRelationId);
	else
		snapshot = FUNC0(RelationRelationId);

	pg_class_scan = FUNC8(pg_class_desc, ClassOidIndexId,
									   indexOK && criticalRelcachesBuilt,
									   snapshot,
									   1, key);

	pg_class_tuple = FUNC10(pg_class_scan);

	/*
	 * Must copy tuple before releasing buffer.
	 */
	if (FUNC2(pg_class_tuple))
		pg_class_tuple = FUNC7(pg_class_tuple);

	/* all done */
	FUNC9(pg_class_scan);
	FUNC11(pg_class_desc, AccessShareLock);

	return pg_class_tuple;
}