#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_12__ {scalar_t__ attisdropped; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int Anum_pg_attribute_attacl ; 
 int /*<<< orphan*/  Anum_pg_attribute_attrelid ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  AttributeRelidNumIndexId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(Oid relationOid, Oid oldOwnerId, Oid newOwnerId)
{
	Relation	attRelation;
	SysScanDesc scan;
	ScanKeyData key[1];
	HeapTuple	attributeTuple;

	attRelation = FUNC17(AttributeRelationId, RowExclusiveLock);
	FUNC7(&key[0],
				Anum_pg_attribute_attrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(relationOid));
	scan = FUNC13(attRelation, AttributeRelidNumIndexId,
							  true, NULL, 1, key);
	while (FUNC3(attributeTuple = FUNC15(scan)))
	{
		Form_pg_attribute att = (Form_pg_attribute) FUNC2(attributeTuple);
		Datum		repl_val[Natts_pg_attribute];
		bool		repl_null[Natts_pg_attribute];
		bool		repl_repl[Natts_pg_attribute];
		Acl		   *newAcl;
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	newtuple;

		/* Ignore dropped columns */
		if (att->attisdropped)
			continue;

		aclDatum = FUNC10(attributeTuple,
								Anum_pg_attribute_attacl,
								FUNC6(attRelation),
								&isNull);
		/* Null ACLs do not require changes */
		if (isNull)
			continue;

		FUNC12(repl_null, false, sizeof(repl_null));
		FUNC12(repl_repl, false, sizeof(repl_repl));

		newAcl = FUNC8(FUNC1(aclDatum),
							 oldOwnerId, newOwnerId);
		repl_repl[Anum_pg_attribute_attacl - 1] = true;
		repl_val[Anum_pg_attribute_attacl - 1] = FUNC5(newAcl);

		newtuple = FUNC11(attributeTuple,
									 FUNC6(attRelation),
									 repl_val, repl_null, repl_repl);

		FUNC0(attRelation, &newtuple->t_self, newtuple);

		FUNC9(newtuple);
	}
	FUNC14(scan);
	FUNC16(attRelation, RowExclusiveLock);
}