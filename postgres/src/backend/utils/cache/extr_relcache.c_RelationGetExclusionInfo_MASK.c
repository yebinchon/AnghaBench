#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
struct TYPE_13__ {scalar_t__ contype; scalar_t__ conindid; } ;
struct TYPE_12__ {scalar_t__* rd_exclstrats; scalar_t__* rd_exclops; scalar_t__* rd_exclprocs; int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/ * rd_opfamily; int /*<<< orphan*/  rd_att; TYPE_1__* rd_index; } ;
struct TYPE_11__ {int /*<<< orphan*/  indrelid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conexclop ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_EXCLUSION ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 scalar_t__ InvalidStrategy ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(Relation indexRelation,
						 Oid **operators,
						 Oid **procs,
						 uint16 **strategies)
{
	int			indnkeyatts;
	Oid		   *ops;
	Oid		   *funcs;
	uint16	   *strats;
	Relation	conrel;
	SysScanDesc conscan;
	ScanKeyData skey[1];
	HeapTuple	htup;
	bool		found;
	MemoryContext oldcxt;
	int			i;

	indnkeyatts = FUNC8(indexRelation);

	/* Allocate result space in caller context */
	*operators = ops = (Oid *) FUNC19(sizeof(Oid) * indnkeyatts);
	*procs = funcs = (Oid *) FUNC19(sizeof(Oid) * indnkeyatts);
	*strategies = strats = (uint16 *) FUNC19(sizeof(uint16) * indnkeyatts);

	/* Quick exit if we have the data cached already */
	if (indexRelation->rd_exclstrats != NULL)
	{
		FUNC18(ops, indexRelation->rd_exclops, sizeof(Oid) * indnkeyatts);
		FUNC18(funcs, indexRelation->rd_exclprocs, sizeof(Oid) * indnkeyatts);
		FUNC18(strats, indexRelation->rd_exclstrats, sizeof(uint16) * indnkeyatts);
		return;
	}

	/*
	 * Search pg_constraint for the constraint associated with the index. To
	 * make this not too painfully slow, we use the index on conrelid; that
	 * will hold the parent relation's OID not the index's own OID.
	 *
	 * Note: if we wanted to rely on the constraint name matching the index's
	 * name, we could just do a direct lookup using pg_constraint's unique
	 * index.  For the moment it doesn't seem worth requiring that.
	 */
	FUNC13(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC10(indexRelation->rd_index->indrelid));

	conrel = FUNC24(ConstraintRelationId, AccessShareLock);
	conscan = FUNC20(conrel, ConstraintRelidTypidNameIndexId, true,
								 NULL, 1, skey);
	found = false;

	while (FUNC7(htup = FUNC22(conscan)))
	{
		Form_pg_constraint conform = (Form_pg_constraint) FUNC6(htup);
		Datum		val;
		bool		isnull;
		ArrayType  *arr;
		int			nelem;

		/* We want the exclusion constraint owning the index */
		if (conform->contype != CONSTRAINT_EXCLUSION ||
			conform->conindid != FUNC12(indexRelation))
			continue;

		/* There should be only one */
		if (found)
			FUNC14(ERROR, "unexpected exclusion constraint record found for rel %s",
				 FUNC11(indexRelation));
		found = true;

		/* Extract the operator OIDS from conexclop */
		val = FUNC15(htup,
						  Anum_pg_constraint_conexclop,
						  conrel->rd_att, &isnull);
		if (isnull)
			FUNC14(ERROR, "null conexclop for rel %s",
				 FUNC11(indexRelation));

		arr = FUNC5(val);	/* ensure not toasted */
		nelem = FUNC1(arr)[0];
		if (FUNC4(arr) != 1 ||
			nelem != indnkeyatts ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC14(ERROR, "conexclop is not a 1-D Oid array");

		FUNC18(ops, FUNC0(arr), sizeof(Oid) * indnkeyatts);
	}

	FUNC21(conscan);
	FUNC23(conrel, AccessShareLock);

	if (!found)
		FUNC14(ERROR, "exclusion constraint record missing for rel %s",
			 FUNC11(indexRelation));

	/* We need the func OIDs and strategy numbers too */
	for (i = 0; i < indnkeyatts; i++)
	{
		funcs[i] = FUNC17(ops[i]);
		strats[i] = FUNC16(ops[i],
											 indexRelation->rd_opfamily[i]);
		/* shouldn't fail, since it was checked at index creation */
		if (strats[i] == InvalidStrategy)
			FUNC14(ERROR, "could not find strategy for operator %u in family %u",
				 ops[i], indexRelation->rd_opfamily[i]);
	}

	/* Save a copy of the results in the relcache entry. */
	oldcxt = FUNC9(indexRelation->rd_indexcxt);
	indexRelation->rd_exclops = (Oid *) FUNC19(sizeof(Oid) * indnkeyatts);
	indexRelation->rd_exclprocs = (Oid *) FUNC19(sizeof(Oid) * indnkeyatts);
	indexRelation->rd_exclstrats = (uint16 *) FUNC19(sizeof(uint16) * indnkeyatts);
	FUNC18(indexRelation->rd_exclops, ops, sizeof(Oid) * indnkeyatts);
	FUNC18(indexRelation->rd_exclprocs, funcs, sizeof(Oid) * indnkeyatts);
	FUNC18(indexRelation->rd_exclstrats, strats, sizeof(uint16) * indnkeyatts);
	FUNC9(oldcxt);
}