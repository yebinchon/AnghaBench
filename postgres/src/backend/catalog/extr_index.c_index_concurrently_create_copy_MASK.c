#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  values; } ;
typedef  TYPE_2__ oidvector ;
struct TYPE_19__ {int /*<<< orphan*/  values; } ;
typedef  TYPE_3__ int2vector ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_22__ {int /*<<< orphan*/  attname; } ;
struct TYPE_21__ {int ii_NumIndexAttrs; int /*<<< orphan*/ * ii_IndexAttrNumbers; int /*<<< orphan*/  ii_Unique; int /*<<< orphan*/  ii_Am; int /*<<< orphan*/  ii_NumIndexKeyAttrs; int /*<<< orphan*/ * ii_Predicate; int /*<<< orphan*/ * ii_Expressions; int /*<<< orphan*/ * ii_ExclusionOps; } ;
struct TYPE_20__ {int /*<<< orphan*/  rd_indcollation; TYPE_1__* rd_rel; } ;
struct TYPE_17__ {int /*<<< orphan*/  reltablespace; int /*<<< orphan*/  relam; } ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_5__ IndexInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_6__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_reloptions ; 
 int /*<<< orphan*/  Anum_pg_index_indclass ; 
 int /*<<< orphan*/  Anum_pg_index_indexprs ; 
 int /*<<< orphan*/  Anum_pg_index_indoption ; 
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int INDEX_CREATE_CONCURRENT ; 
 int INDEX_CREATE_SKIP_BUILD ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 scalar_t__ FUNC23 (char*) ; 

Oid
FUNC24(Relation heapRelation, Oid oldIndexId, const char *newName)
{
	Relation	indexRelation;
	IndexInfo  *oldInfo,
			   *newInfo;
	Oid			newIndexId = InvalidOid;
	HeapTuple	indexTuple,
				classTuple;
	Datum		indclassDatum,
				colOptionDatum,
				optionDatum;
	oidvector  *indclass;
	int2vector *indcoloptions;
	bool		isnull;
	List	   *indexColNames = NIL;
	List	   *indexExprs = NIL;
	List	   *indexPreds = NIL;

	indexRelation = FUNC18(oldIndexId, RowExclusiveLock);

	/* The new index needs some information from the old index */
	oldInfo = FUNC1(indexRelation);

	/*
	 * Concurrent build of an index with exclusion constraints is not
	 * supported.
	 */
	if (oldInfo->ii_ExclusionOps != NULL)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("concurrent index creation for exclusion constraints is not supported")));

	/* Get the array of class and column options IDs from index info */
	indexTuple = FUNC8(INDEXRELID, FUNC5(oldIndexId));
	if (!FUNC3(indexTuple))
		FUNC12(ERROR, "cache lookup failed for index %u", oldIndexId);
	indclassDatum = FUNC9(INDEXRELID, indexTuple,
									Anum_pg_index_indclass, &isnull);
	FUNC0(!isnull);
	indclass = (oidvector *) FUNC2(indclassDatum);

	colOptionDatum = FUNC9(INDEXRELID, indexTuple,
									 Anum_pg_index_indoption, &isnull);
	FUNC0(!isnull);
	indcoloptions = (int2vector *) FUNC2(colOptionDatum);

	/* Fetch options of index if any */
	classTuple = FUNC8(RELOID, oldIndexId);
	if (!FUNC3(classTuple))
		FUNC12(ERROR, "cache lookup failed for relation %u", oldIndexId);
	optionDatum = FUNC9(RELOID, classTuple,
								  Anum_pg_class_reloptions, &isnull);

	/*
	 * Fetch the list of expressions and predicates directly from the
	 * catalogs.  This cannot rely on the information from IndexInfo of the
	 * old index as these have been flattened for the planner.
	 */
	if (oldInfo->ii_Expressions != NIL)
	{
		Datum		exprDatum;
		char	   *exprString;

		exprDatum = FUNC9(INDEXRELID, indexTuple,
									Anum_pg_index_indexprs, &isnull);
		FUNC0(!isnull);
		exprString = FUNC10(exprDatum);
		indexExprs = (List *) FUNC23(exprString);
		FUNC22(exprString);
	}
	if (oldInfo->ii_Predicate != NIL)
	{
		Datum		predDatum;
		char	   *predString;

		predDatum = FUNC9(INDEXRELID, indexTuple,
									Anum_pg_index_indpred, &isnull);
		FUNC0(!isnull);
		predString = FUNC10(predDatum);
		indexPreds = (List *) FUNC23(predString);

		/* Also convert to implicit-AND format */
		indexPreds = FUNC21((Expr *) indexPreds);
		FUNC22(predString);
	}

	/*
	 * Build the index information for the new index.  Note that rebuild of
	 * indexes with exclusion constraints is not supported, hence there is no
	 * need to fill all the ii_Exclusion* fields.
	 */
	newInfo = FUNC20(oldInfo->ii_NumIndexAttrs,
							oldInfo->ii_NumIndexKeyAttrs,
							oldInfo->ii_Am,
							indexExprs,
							indexPreds,
							oldInfo->ii_Unique,
							false,	/* not ready for inserts */
							true);

	/*
	 * Extract the list of column names and the column numbers for the new
	 * index information.  All this information will be used for the index
	 * creation.
	 */
	for (int i = 0; i < oldInfo->ii_NumIndexAttrs; i++)
	{
		TupleDesc	indexTupDesc = FUNC6(indexRelation);
		Form_pg_attribute att = FUNC11(indexTupDesc, i);

		indexColNames = FUNC19(indexColNames, FUNC4(att->attname));
		newInfo->ii_IndexAttrNumbers[i] = oldInfo->ii_IndexAttrNumbers[i];
	}

	/*
	 * Now create the new index.
	 *
	 * For a partition index, we adjust the partition dependency later, to
	 * ensure a consistent state at all times.  That is why parentIndexRelid
	 * is not set here.
	 */
	newIndexId = FUNC17(heapRelation,
							  newName,
							  InvalidOid,	/* indexRelationId */
							  InvalidOid,	/* parentIndexRelid */
							  InvalidOid,	/* parentConstraintId */
							  InvalidOid,	/* relFileNode */
							  newInfo,
							  indexColNames,
							  indexRelation->rd_rel->relam,
							  indexRelation->rd_rel->reltablespace,
							  indexRelation->rd_indcollation,
							  indclass->values,
							  indcoloptions->values,
							  optionDatum,
							  INDEX_CREATE_SKIP_BUILD | INDEX_CREATE_CONCURRENT,
							  0,
							  true, /* allow table to be a system catalog? */
							  false,	/* is_internal? */
							  NULL);

	/* Close the relations used and clean up */
	FUNC16(indexRelation, NoLock);
	FUNC7(indexTuple);
	FUNC7(classTuple);

	return newIndexId;
}