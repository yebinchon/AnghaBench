#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* constr; } ;
struct TYPE_16__ {void* ccbin; void* ccname; int /*<<< orphan*/  ccnoinherit; int /*<<< orphan*/  ccvalid; } ;
struct TYPE_15__ {scalar_t__ contype; int /*<<< orphan*/  conname; int /*<<< orphan*/  connoinherit; int /*<<< orphan*/  convalidated; } ;
struct TYPE_14__ {TYPE_9__* rd_att; } ;
struct TYPE_13__ {int num_check; TYPE_4__* check; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ ConstrCheck ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conbin ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  CheckConstraintCmp ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(Relation relation)
{
	ConstrCheck *check = relation->rd_att->constr->check;
	int			ncheck = relation->rd_att->constr->num_check;
	Relation	conrel;
	SysScanDesc conscan;
	ScanKeyData skey[1];
	HeapTuple	htup;
	int			found = 0;

	FUNC7(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC6(relation)));

	conrel = FUNC17(ConstraintRelationId, AccessShareLock);
	conscan = FUNC13(conrel, ConstraintRelidTypidNameIndexId, true,
								 NULL, 1, skey);

	while (FUNC1(htup = FUNC15(conscan)))
	{
		Form_pg_constraint conform = (Form_pg_constraint) FUNC0(htup);
		Datum		val;
		bool		isnull;
		char	   *s;

		/* We want check constraints only */
		if (conform->contype != CONSTRAINT_CHECK)
			continue;

		if (found >= ncheck)
			FUNC9(ERROR, "unexpected constraint record found for rel %s",
				 FUNC5(relation));

		check[found].ccvalid = conform->convalidated;
		check[found].ccnoinherit = conform->connoinherit;
		check[found].ccname = FUNC2(CacheMemoryContext,
												  FUNC3(conform->conname));

		/* Grab and test conbin is actually set */
		val = FUNC10(htup,
						  Anum_pg_constraint_conbin,
						  conrel->rd_att, &isnull);
		if (isnull)
			FUNC9(ERROR, "null conbin for rel %s",
				 FUNC5(relation));

		/* detoast and convert to cstring in caller's context */
		s = FUNC8(val);
		check[found].ccbin = FUNC2(CacheMemoryContext, s);
		FUNC11(s);

		found++;
	}

	FUNC14(conscan);
	FUNC16(conrel, AccessShareLock);

	if (found != ncheck)
		FUNC9(ERROR, "%d constraint record(s) missing for rel %s",
			 ncheck - found, FUNC5(relation));

	/* Sort the records so that CHECKs are applied in a deterministic order */
	if (ncheck > 1)
		FUNC12(check, ncheck, sizeof(ConstrCheck), CheckConstraintCmp);
}