#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_5__ {int /*<<< orphan*/  indexrelid; int /*<<< orphan*/  indrelid; } ;
struct TYPE_4__ {int /*<<< orphan*/  indexOid; int /*<<< orphan*/  tableOid; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RelToCluster ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indisclustered ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F_BOOLEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC13(MemoryContext cluster_context)
{
	Relation	indRelation;
	TableScanDesc scan;
	ScanKeyData entry;
	HeapTuple	indexTuple;
	Form_pg_index index;
	MemoryContext old_context;
	RelToCluster *rvtc;
	List	   *rvs = NIL;

	/*
	 * Get all indexes that have indisclustered set and are owned by
	 * appropriate user. System relations or nailed-in relations cannot ever
	 * have indisclustered set, because CLUSTER will refuse to set it when
	 * called with one of them as argument.
	 */
	indRelation = FUNC12(IndexRelationId, AccessShareLock);
	FUNC4(&entry,
				Anum_pg_index_indisclustered,
				BTEqualStrategyNumber, F_BOOLEQ,
				FUNC0(true));
	scan = FUNC10(indRelation, 1, &entry);
	while ((indexTuple = FUNC5(scan, ForwardScanDirection)) != NULL)
	{
		index = (Form_pg_index) FUNC1(indexTuple);

		if (!FUNC8(index->indrelid, FUNC2()))
			continue;

		/*
		 * We have to build the list in a different memory context so it will
		 * survive the cross-transaction processing
		 */
		old_context = FUNC3(cluster_context);

		rvtc = (RelToCluster *) FUNC7(sizeof(RelToCluster));
		rvtc->tableOid = index->indrelid;
		rvtc->indexOid = index->indexrelid;
		rvs = FUNC6(rvs, rvtc);

		FUNC3(old_context);
	}
	FUNC11(scan);

	FUNC9(indRelation, AccessShareLock);

	return rvs;
}