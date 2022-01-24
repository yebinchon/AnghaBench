#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
struct TYPE_24__ {int indisvalid; } ;
struct TYPE_23__ {int /*<<< orphan*/  inhrelid; } ;
struct TYPE_22__ {TYPE_2__* rd_index; TYPE_1__* rd_rel; TYPE_13__* rd_indextuple; } ;
struct TYPE_21__ {int /*<<< orphan*/  indisvalid; } ;
struct TYPE_20__ {scalar_t__ relkind; scalar_t__ relispartition; } ;
struct TYPE_19__ {int nparts; } ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_4__* Form_pg_inherits ;
typedef  TYPE_5__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhparent ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  InheritsParentIndexId ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 TYPE_15__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(Relation partedIdx, Relation partedTbl)
{
	Relation	inheritsRel;
	SysScanDesc scan;
	ScanKeyData key;
	int			tuples = 0;
	HeapTuple	inhTup;
	bool		updated = false;

	FUNC0(partedIdx->rd_rel->relkind == RELKIND_PARTITIONED_INDEX);

	/*
	 * Scan pg_inherits for this parent index.  Count each valid index we find
	 * (verifying the pg_index entry for each), and if we reach the total
	 * amount we expect, we can mark this parent index as valid.
	 */
	inheritsRel = FUNC20(InheritsRelationId, AccessShareLock);
	FUNC9(&key, Anum_pg_inherits_inhparent,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(FUNC7(partedIdx)));
	scan = FUNC16(inheritsRel, InheritsParentIndexId, true,
							  NULL, 1, &key);
	while ((inhTup = FUNC18(scan)) != NULL)
	{
		Form_pg_inherits inhForm = (Form_pg_inherits) FUNC3(inhTup);
		HeapTuple	indTup;
		Form_pg_index indexForm;

		indTup = FUNC10(INDEXRELID,
								 FUNC5(inhForm->inhrelid));
		if (!FUNC4(indTup))
			FUNC11(ERROR, "cache lookup failed for index %u", inhForm->inhrelid);
		indexForm = (Form_pg_index) FUNC3(indTup);
		if (indexForm->indisvalid)
			tuples += 1;
		FUNC8(indTup);
	}

	/* Done with pg_inherits */
	FUNC17(scan);
	FUNC19(inheritsRel, AccessShareLock);

	/*
	 * If we found as many inherited indexes as the partitioned table has
	 * partitions, we're good; update pg_index to set indisvalid.
	 */
	if (tuples == FUNC6(partedTbl)->nparts)
	{
		Relation	idxRel;
		HeapTuple	newtup;

		idxRel = FUNC20(IndexRelationId, RowExclusiveLock);

		newtup = FUNC13(partedIdx->rd_indextuple);
		((Form_pg_index) FUNC3(newtup))->indisvalid = true;
		updated = true;

		FUNC1(idxRel, &partedIdx->rd_indextuple->t_self, newtup);

		FUNC19(idxRel, RowExclusiveLock);
	}

	/*
	 * If this index is in turn a partition of a larger index, validating it
	 * might cause the parent to become valid also.  Try that.
	 */
	if (updated && partedIdx->rd_rel->relispartition)
	{
		Oid			parentIdxId,
					parentTblId;
		Relation	parentIdx,
					parentTbl;

		/* make sure we see the validation we just did */
		FUNC2();

		parentIdxId = FUNC12(FUNC7(partedIdx));
		parentTblId = FUNC12(FUNC7(partedTbl));
		parentIdx = FUNC15(parentIdxId, AccessExclusiveLock);
		parentTbl = FUNC15(parentTblId, AccessExclusiveLock);
		FUNC0(!parentIdx->rd_index->indisvalid);

		FUNC21(parentIdx, parentTbl);

		FUNC14(parentIdx, AccessExclusiveLock);
		FUNC14(parentTbl, AccessExclusiveLock);
	}
}