#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isnull ;
struct TYPE_23__ {scalar_t__ inhparent; int /*<<< orphan*/  inhrelid; } ;
struct TYPE_22__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_21__ {TYPE_2__* rd_index; TYPE_1__* rd_rel; } ;
struct TYPE_20__ {scalar_t__ indrelid; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_3__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_inherits ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_inherits_inhparent ; 
 int Anum_pg_inherits_inhrelid ; 
 int Anum_pg_inherits_inhseqno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_PRI ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_SEC ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InheritsRelidSeqnoIndexId ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ InvalidOid ; 
 int Natts_pg_inherits ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__) ; 

void
FUNC25(Relation partitionIdx, Oid parentOid)
{
	Relation	pg_inherits;
	ScanKeyData key[2];
	SysScanDesc scan;
	Oid			partRelid = FUNC11(partitionIdx);
	HeapTuple	tuple;
	bool		fix_dependencies;

	/* Make sure this is an index */
	FUNC0(partitionIdx->rd_rel->relkind == RELKIND_INDEX ||
		   partitionIdx->rd_rel->relkind == RELKIND_PARTITIONED_INDEX);

	/*
	 * Scan pg_inherits for rows linking our index to some parent.
	 */
	pg_inherits = FUNC20(InheritsRelationId, RowExclusiveLock);
	FUNC12(&key[0],
				Anum_pg_inherits_inhrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(partRelid));
	FUNC12(&key[1],
				Anum_pg_inherits_inhseqno,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC6(1));
	scan = FUNC21(pg_inherits, InheritsRelidSeqnoIndexId, true,
							  NULL, 2, key);
	tuple = FUNC23(scan);

	if (!FUNC5(tuple))
	{
		if (parentOid == InvalidOid)
		{
			/*
			 * No pg_inherits row, and no parent wanted: nothing to do in this
			 * case.
			 */
			fix_dependencies = false;
		}
		else
		{
			Datum		values[Natts_pg_inherits];
			bool		isnull[Natts_pg_inherits];

			/*
			 * No pg_inherits row exists, and we want a parent for this index,
			 * so insert it.
			 */
			values[Anum_pg_inherits_inhrelid - 1] = FUNC8(partRelid);
			values[Anum_pg_inherits_inhparent - 1] =
				FUNC8(parentOid);
			values[Anum_pg_inherits_inhseqno - 1] = FUNC6(1);
			FUNC17(isnull, false, sizeof(isnull));

			tuple = FUNC16(FUNC10(pg_inherits),
									values, isnull);
			FUNC2(pg_inherits, tuple);

			fix_dependencies = true;
		}
	}
	else
	{
		Form_pg_inherits inhForm = (Form_pg_inherits) FUNC4(tuple);

		if (parentOid == InvalidOid)
		{
			/*
			 * There exists a pg_inherits row, which we want to clear; do so.
			 */
			FUNC1(pg_inherits, &tuple->t_self);
			fix_dependencies = true;
		}
		else
		{
			/*
			 * A pg_inherits row exists.  If it's the same we want, then we're
			 * good; if it differs, that amounts to a corrupt catalog and
			 * should not happen.
			 */
			if (inhForm->inhparent != parentOid)
			{
				/* unexpected: we should not get called in this case */
				FUNC15(ERROR, "bogus pg_inherit row: inhrelid %u inhparent %u",
					 inhForm->inhrelid, inhForm->inhparent);
			}

			/* already in the right state */
			fix_dependencies = false;
		}
	}

	/* done with pg_inherits */
	FUNC22(scan);
	FUNC19(pg_inherits, RowExclusiveLock);

	/* set relhassubclass if an index partition has been added to the parent */
	if (FUNC9(parentOid))
		FUNC13(parentOid, true);

	/* set relispartition correctly on the partition */
	FUNC24(partRelid, FUNC9(parentOid));

	if (fix_dependencies)
	{
		/*
		 * Insert/delete pg_depend rows.  If setting a parent, add PARTITION
		 * dependencies on the parent index and the table; if removing a
		 * parent, delete PARTITION dependencies.
		 */
		if (FUNC9(parentOid))
		{
			ObjectAddress partIdx;
			ObjectAddress parentIdx;
			ObjectAddress partitionTbl;

			FUNC7(partIdx, RelationRelationId, partRelid);
			FUNC7(parentIdx, RelationRelationId, parentOid);
			FUNC7(partitionTbl, RelationRelationId,
							 partitionIdx->rd_index->indrelid);
			FUNC18(&partIdx, &parentIdx,
							   DEPENDENCY_PARTITION_PRI);
			FUNC18(&partIdx, &partitionTbl,
							   DEPENDENCY_PARTITION_SEC);
		}
		else
		{
			FUNC14(RelationRelationId, partRelid,
											RelationRelationId,
											DEPENDENCY_PARTITION_PRI);
			FUNC14(RelationRelationId, partRelid,
											RelationRelationId,
											DEPENDENCY_PARTITION_SEC);
		}

		/* make our updates visible */
		FUNC3();
	}
}