#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ oidvector ;
typedef  int /*<<< orphan*/  nulls ;
typedef  TYPE_1__ int2vector ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_9__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; scalar_t__ ii_Expressions; scalar_t__ ii_Predicate; int ii_Unique; int /*<<< orphan*/ * ii_IndexAttrNumbers; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ IndexInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int Anum_pg_index_indcheckxmin ; 
 int Anum_pg_index_indclass ; 
 int Anum_pg_index_indcollation ; 
 int Anum_pg_index_indexprs ; 
 int Anum_pg_index_indexrelid ; 
 int Anum_pg_index_indimmediate ; 
 int Anum_pg_index_indisclustered ; 
 int Anum_pg_index_indisexclusion ; 
 int Anum_pg_index_indislive ; 
 int Anum_pg_index_indisprimary ; 
 int Anum_pg_index_indisready ; 
 int Anum_pg_index_indisreplident ; 
 int Anum_pg_index_indisunique ; 
 int Anum_pg_index_indisvalid ; 
 int Anum_pg_index_indkey ; 
 int Anum_pg_index_indnatts ; 
 int Anum_pg_index_indnkeyatts ; 
 int Anum_pg_index_indoption ; 
 int Anum_pg_index_indpred ; 
 int Anum_pg_index_indrelid ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexRelationId ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 scalar_t__ NIL ; 
 int Natts_pg_index ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 char* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Oid indexoid,
					Oid heapoid,
					Oid parentIndexId,
					IndexInfo *indexInfo,
					Oid *collationOids,
					Oid *classOids,
					int16 *coloptions,
					bool primary,
					bool isexclusion,
					bool immediate,
					bool isvalid,
					bool isready)
{
	int2vector *indkey;
	oidvector  *indcollation;
	oidvector  *indclass;
	int2vector *indoption;
	Datum		exprsDatum;
	Datum		predDatum;
	Datum		values[Natts_pg_index];
	bool		nulls[Natts_pg_index];
	Relation	pg_index;
	HeapTuple	tuple;
	int			i;

	/*
	 * Copy the index key, opclass, and indoption info into arrays (should we
	 * make the caller pass them like this to start with?)
	 */
	indkey = FUNC8(NULL, indexInfo->ii_NumIndexAttrs);
	for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
		indkey->values[i] = indexInfo->ii_IndexAttrNumbers[i];
	indcollation = FUNC9(collationOids, indexInfo->ii_NumIndexKeyAttrs);
	indclass = FUNC9(classOids, indexInfo->ii_NumIndexKeyAttrs);
	indoption = FUNC8(coloptions, indexInfo->ii_NumIndexKeyAttrs);

	/*
	 * Convert the index expressions (if any) to a text datum
	 */
	if (indexInfo->ii_Expressions != NIL)
	{
		char	   *exprsString;

		exprsString = FUNC13(indexInfo->ii_Expressions);
		exprsDatum = FUNC1(exprsString);
		FUNC14(exprsString);
	}
	else
		exprsDatum = (Datum) 0;

	/*
	 * Convert the index predicate (if any) to a text datum.  Note we convert
	 * implicit-AND format to normal explicit-AND for storage.
	 */
	if (indexInfo->ii_Predicate != NIL)
	{
		char	   *predString;

		predString = FUNC13(FUNC12(indexInfo->ii_Predicate));
		predDatum = FUNC1(predString);
		FUNC14(predString);
	}
	else
		predDatum = (Datum) 0;

	/*
	 * open the system catalog index relation
	 */
	pg_index = FUNC16(IndexRelationId, RowExclusiveLock);

	/*
	 * Build a pg_index tuple
	 */
	FUNC4(nulls, false, sizeof(nulls));

	values[Anum_pg_index_indexrelid - 1] = FUNC5(indexoid);
	values[Anum_pg_index_indrelid - 1] = FUNC5(heapoid);
	values[Anum_pg_index_indnatts - 1] = FUNC3(indexInfo->ii_NumIndexAttrs);
	values[Anum_pg_index_indnkeyatts - 1] = FUNC3(indexInfo->ii_NumIndexKeyAttrs);
	values[Anum_pg_index_indisunique - 1] = FUNC0(indexInfo->ii_Unique);
	values[Anum_pg_index_indisprimary - 1] = FUNC0(primary);
	values[Anum_pg_index_indisexclusion - 1] = FUNC0(isexclusion);
	values[Anum_pg_index_indimmediate - 1] = FUNC0(immediate);
	values[Anum_pg_index_indisclustered - 1] = FUNC0(false);
	values[Anum_pg_index_indisvalid - 1] = FUNC0(isvalid);
	values[Anum_pg_index_indcheckxmin - 1] = FUNC0(false);
	values[Anum_pg_index_indisready - 1] = FUNC0(isready);
	values[Anum_pg_index_indislive - 1] = FUNC0(true);
	values[Anum_pg_index_indisreplident - 1] = FUNC0(false);
	values[Anum_pg_index_indkey - 1] = FUNC6(indkey);
	values[Anum_pg_index_indcollation - 1] = FUNC6(indcollation);
	values[Anum_pg_index_indclass - 1] = FUNC6(indclass);
	values[Anum_pg_index_indoption - 1] = FUNC6(indoption);
	values[Anum_pg_index_indexprs - 1] = exprsDatum;
	if (exprsDatum == (Datum) 0)
		nulls[Anum_pg_index_indexprs - 1] = true;
	values[Anum_pg_index_indpred - 1] = predDatum;
	if (predDatum == (Datum) 0)
		nulls[Anum_pg_index_indpred - 1] = true;

	tuple = FUNC10(FUNC7(pg_index), values, nulls);

	/*
	 * insert the tuple into the pg_index catalog
	 */
	FUNC2(pg_index, tuple);

	/*
	 * close the relation and free the tuple
	 */
	FUNC15(pg_index, RowExclusiveLock);
	FUNC11(tuple);
}