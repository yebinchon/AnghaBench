#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_15__ {scalar_t__* values; } ;
typedef  TYPE_1__ oidvector ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_20__ {scalar_t__ oid; int /*<<< orphan*/  amhandler; } ;
struct TYPE_19__ {int indnkeyatts; scalar_t__ indisvalid; } ;
struct TYPE_18__ {int amcanorder; } ;
struct TYPE_17__ {scalar_t__* ii_ExclusionOps; } ;
struct TYPE_16__ {int /*<<< orphan*/  rd_att; } ;
struct TYPE_14__ {scalar_t__ atttypid; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ IndexInfo ;
typedef  TYPE_4__ IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_5__* Form_pg_index ;
typedef  TYPE_6__* Form_pg_am ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AMNAME ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indclass ; 
 int /*<<< orphan*/  Anum_pg_index_indcollation ; 
 int /*<<< orphan*/  Anum_pg_index_indexprs ; 
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char const*,scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__**,scalar_t__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_10__* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC25 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC27 (int) ; 

bool
FUNC28(Oid oldId,
					 const char *accessMethodName,
					 List *attributeList,
					 List *exclusionOpNames)
{
	bool		isconstraint;
	Oid		   *typeObjectId;
	Oid		   *collationObjectId;
	Oid		   *classObjectId;
	Oid			accessMethodId;
	Oid			relationId;
	HeapTuple	tuple;
	Form_pg_index indexForm;
	Form_pg_am	accessMethodForm;
	IndexAmRoutine *amRoutine;
	bool		amcanorder;
	int16	   *coloptions;
	IndexInfo  *indexInfo;
	int			numberOfAttributes;
	int			old_natts;
	bool		isnull;
	bool		ret = true;
	oidvector  *old_indclass;
	oidvector  *old_indcollation;
	Relation	irel;
	int			i;
	Datum		d;

	/* Caller should already have the relation locked in some way. */
	relationId = FUNC6(oldId, false);

	/*
	 * We can pretend isconstraint = false unconditionally.  It only serves to
	 * decide the text of an error message that should never happen for us.
	 */
	isconstraint = false;

	numberOfAttributes = FUNC23(attributeList);
	FUNC0(numberOfAttributes > 0);
	FUNC0(numberOfAttributes <= INDEX_MAX_KEYS);

	/* look up the access method */
	tuple = FUNC12(AMNAME, FUNC9(accessMethodName));
	if (!FUNC5(tuple))
		FUNC16(ERROR,
				(FUNC17(ERRCODE_UNDEFINED_OBJECT),
				 FUNC18("access method \"%s\" does not exist",
						accessMethodName)));
	accessMethodForm = (Form_pg_am) FUNC3(tuple);
	accessMethodId = accessMethodForm->oid;
	amRoutine = FUNC4(accessMethodForm->amhandler);
	FUNC11(tuple);

	amcanorder = amRoutine->amcanorder;

	/*
	 * Compute the operator classes, collations, and exclusion operators for
	 * the new index, so we can test whether it's compatible with the existing
	 * one.  Note that ComputeIndexAttrs might fail here, but that's OK:
	 * DefineIndex would have called this function with the same arguments
	 * later on, and it would have failed then anyway.  Our attributeList
	 * contains only key attributes, thus we're filling ii_NumIndexAttrs and
	 * ii_NumIndexKeyAttrs with same value.
	 */
	indexInfo = FUNC24(numberOfAttributes, numberOfAttributes,
							  accessMethodId, NIL, NIL, false, false, false);
	typeObjectId = (Oid *) FUNC27(numberOfAttributes * sizeof(Oid));
	collationObjectId = (Oid *) FUNC27(numberOfAttributes * sizeof(Oid));
	classObjectId = (Oid *) FUNC27(numberOfAttributes * sizeof(Oid));
	coloptions = (int16 *) FUNC27(numberOfAttributes * sizeof(int16));
	FUNC1(indexInfo,
					  typeObjectId, collationObjectId, classObjectId,
					  coloptions, attributeList,
					  exclusionOpNames, relationId,
					  accessMethodName, accessMethodId,
					  amcanorder, isconstraint);


	/* Get the soon-obsolete pg_index tuple. */
	tuple = FUNC12(INDEXRELID, FUNC8(oldId));
	if (!FUNC5(tuple))
		FUNC15(ERROR, "cache lookup failed for index %u", oldId);
	indexForm = (Form_pg_index) FUNC3(tuple);

	/*
	 * We don't assess expressions or predicates; assume incompatibility.
	 * Also, if the index is invalid for any reason, treat it as incompatible.
	 */
	if (!(FUNC20(tuple, Anum_pg_index_indpred, NULL) &&
		  FUNC20(tuple, Anum_pg_index_indexprs, NULL) &&
		  indexForm->indisvalid))
	{
		FUNC11(tuple);
		return false;
	}

	/* Any change in operator class or collation breaks compatibility. */
	old_natts = indexForm->indnkeyatts;
	FUNC0(old_natts == numberOfAttributes);

	d = FUNC13(INDEXRELID, tuple, Anum_pg_index_indcollation, &isnull);
	FUNC0(!isnull);
	old_indcollation = (oidvector *) FUNC2(d);

	d = FUNC13(INDEXRELID, tuple, Anum_pg_index_indclass, &isnull);
	FUNC0(!isnull);
	old_indclass = (oidvector *) FUNC2(d);

	ret = (FUNC25(old_indclass->values, classObjectId,
				  old_natts * sizeof(Oid)) == 0 &&
		   FUNC25(old_indcollation->values, collationObjectId,
				  old_natts * sizeof(Oid)) == 0);

	FUNC11(tuple);

	if (!ret)
		return false;

	/* For polymorphic opcintype, column type changes break compatibility. */
	irel = FUNC22(oldId, AccessShareLock);	/* caller probably has a lock */
	for (i = 0; i < old_natts; i++)
	{
		if (FUNC7(FUNC19(classObjectId[i])) &&
			FUNC14(irel->rd_att, i)->atttypid != typeObjectId[i])
		{
			ret = false;
			break;
		}
	}

	/* Any change in exclusion operator selections breaks compatibility. */
	if (ret && indexInfo->ii_ExclusionOps != NULL)
	{
		Oid		   *old_operators,
				   *old_procs;
		uint16	   *old_strats;

		FUNC10(irel, &old_operators, &old_procs, &old_strats);
		ret = FUNC25(old_operators, indexInfo->ii_ExclusionOps,
					 old_natts * sizeof(Oid)) == 0;

		/* Require an exact input type match for polymorphic operators. */
		if (ret)
		{
			for (i = 0; i < old_natts && ret; i++)
			{
				Oid			left,
							right;

				FUNC26(indexInfo->ii_ExclusionOps[i], &left, &right);
				if ((FUNC7(left) || FUNC7(right)) &&
					FUNC14(irel->rd_att, i)->atttypid != typeObjectId[i])
				{
					ret = false;
					break;
				}
			}
		}
	}

	FUNC21(irel, NoLock);
	return ret;
}