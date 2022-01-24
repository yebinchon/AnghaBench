#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_21__ {int ri_NumIndices; TYPE_2__* ri_RelationDesc; TYPE_4__** ri_IndexRelationInfo; TYPE_2__** ri_IndexRelationDescs; } ;
struct TYPE_20__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_19__ {scalar_t__ ii_Expressions; scalar_t__ ii_Predicate; scalar_t__ ii_NumIndexKeyAttrs; int /*<<< orphan*/ * ii_ExclusionOps; int /*<<< orphan*/  ii_ReadyForInserts; } ;
struct TYPE_18__ {TYPE_1__* rd_index; } ;
struct TYPE_17__ {int indimmediate; scalar_t__ indisunique; } ;
typedef  TYPE_2__** RelationPtr ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_4__ IndexInfo ;
typedef  TYPE_5__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_6__* CatalogIndexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  TTSOpsHeapTuple ; 
 int /*<<< orphan*/  UNIQUE_CHECK_NO ; 
 int /*<<< orphan*/  UNIQUE_CHECK_YES ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC10(CatalogIndexState indstate, HeapTuple heapTuple)
{
	int			i;
	int			numIndexes;
	RelationPtr relationDescs;
	Relation	heapRelation;
	TupleTableSlot *slot;
	IndexInfo **indexInfoArray;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];

	/*
	 * HOT update does not require index inserts. But with asserts enabled we
	 * want to check that it'd be legal to currently insert into the
	 * table/index.
	 */
#ifndef USE_ASSERT_CHECKING
	if (FUNC4(heapTuple))
		return;
#endif

	/*
	 * Get information from the state structure.  Fall out if nothing to do.
	 */
	numIndexes = indstate->ri_NumIndices;
	if (numIndexes == 0)
		return;
	relationDescs = indstate->ri_IndexRelationDescs;
	indexInfoArray = indstate->ri_IndexRelationInfo;
	heapRelation = indstate->ri_RelationDesc;

	/* Need a slot to hold the tuple being examined */
	slot = FUNC5(FUNC7(heapRelation),
									&TTSOpsHeapTuple);
	FUNC2(heapTuple, slot, false);

	/*
	 * for each index, form and insert the index tuple
	 */
	for (i = 0; i < numIndexes; i++)
	{
		IndexInfo  *indexInfo;
		Relation	index;

		indexInfo = indexInfoArray[i];
		index = relationDescs[i];

		/* If the index is marked as read-only, ignore it */
		if (!indexInfo->ii_ReadyForInserts)
			continue;

		/*
		 * Expressional and partial indexes on system catalogs are not
		 * supported, nor exclusion constraints, nor deferred uniqueness
		 */
		FUNC0(indexInfo->ii_Expressions == NIL);
		FUNC0(indexInfo->ii_Predicate == NIL);
		FUNC0(indexInfo->ii_ExclusionOps == NULL);
		FUNC0(index->rd_index->indimmediate);
		FUNC0(indexInfo->ii_NumIndexKeyAttrs != 0);

		/* see earlier check above */
#ifdef USE_ASSERT_CHECKING
		if (HeapTupleIsHeapOnly(heapTuple))
		{
			Assert(!ReindexIsProcessingIndex(RelationGetRelid(index)));
			continue;
		}
#endif							/* USE_ASSERT_CHECKING */

		/*
		 * FormIndexDatum fills in its values and isnull parameters with the
		 * appropriate values for the column(s) of the index.
		 */
		FUNC3(indexInfo,
					   slot,
					   NULL,	/* no expression eval to do */
					   values,
					   isnull);

		/*
		 * The index AM does the rest.
		 */
		FUNC9(index,		/* index relation */
					 values,	/* array of index Datums */
					 isnull,	/* is-null flags */
					 &(heapTuple->t_self),	/* tid of heap tuple */
					 heapRelation,
					 index->rd_index->indisunique ?
					 UNIQUE_CHECK_YES : UNIQUE_CHECK_NO,
					 indexInfo);
	}

	FUNC1(slot);
}