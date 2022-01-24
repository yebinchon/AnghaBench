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
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  SnapshotData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  scalar_t__ RepOriginId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_replication_origin_roident ; 
 int Anum_pg_replication_origin_roname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int Natts_pg_replication_origin ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ PG_UINT16_MAX ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReplicationOriginIdentIndex ; 
 int /*<<< orphan*/  ReplicationOriginRelationId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

RepOriginId
FUNC22(char *roname)
{
	Oid			roident;
	HeapTuple	tuple = NULL;
	Relation	rel;
	Datum		roname_d;
	SnapshotData SnapshotDirty;
	SysScanDesc scan;
	ScanKeyData key;

	roname_d = FUNC2(roname);

	FUNC0(FUNC7());

	/*
	 * We need the numeric replication origin to be 16bit wide, so we cannot
	 * rely on the normal oid allocation. Instead we simply scan
	 * pg_replication_origin for the first unused id. That's not particularly
	 * efficient, but this should be a fairly infrequent operation - we can
	 * easily spend a bit more code on this when it turns out it needs to be
	 * faster.
	 *
	 * We handle concurrency by taking an exclusive lock (allowing reads!)
	 * over the table for the duration of the search. Because we use a "dirty
	 * snapshot" we can read rows that other in-progress sessions have
	 * written, even though they would be invisible with normal snapshots. Due
	 * to the exclusive lock there's no danger that new rows can appear while
	 * we're checking.
	 */
	FUNC6(SnapshotDirty);

	rel = FUNC21(ReplicationOriginRelationId, ExclusiveLock);

	for (roident = InvalidOid + 1; roident < PG_UINT16_MAX; roident++)
	{
		bool		nulls[Natts_pg_replication_origin];
		Datum		values[Natts_pg_replication_origin];
		bool		collides;

		FUNC1();

		FUNC10(&key,
					Anum_pg_replication_origin_roident,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC8(roident));

		scan = FUNC17(rel, ReplicationOriginIdentIndex,
								  true /* indexOK */ ,
								  &SnapshotDirty,
								  1, &key);

		collides = FUNC5(FUNC19(scan));

		FUNC18(scan);

		if (!collides)
		{
			/*
			 * Ok, found an unused roident, insert the new row and do a CCI,
			 * so our callers can look it up if they want to.
			 */
			FUNC16(&nulls, 0, sizeof(nulls));

			values[Anum_pg_replication_origin_roident - 1] = FUNC8(roident);
			values[Anum_pg_replication_origin_roname - 1] = roname_d;

			tuple = FUNC14(FUNC9(rel), values, nulls);
			FUNC3(rel, tuple);
			FUNC4();
			break;
		}
	}

	/* now release lock again,	*/
	FUNC20(rel, ExclusiveLock);

	if (tuple == NULL)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC13("could not find free replication origin OID")));

	FUNC15(tuple);
	return roident;
}