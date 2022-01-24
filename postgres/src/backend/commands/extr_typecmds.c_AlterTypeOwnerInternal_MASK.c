#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_11__ {int /*<<< orphan*/  typarray; int /*<<< orphan*/  typowner; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int Anum_pg_type_typacl ; 
 int Anum_pg_type_typowner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int Natts_pg_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(Oid typeOid, Oid newOwnerId)
{
	Relation	rel;
	HeapTuple	tup;
	Form_pg_type typTup;
	Datum		repl_val[Natts_pg_type];
	bool		repl_null[Natts_pg_type];
	bool		repl_repl[Natts_pg_type];
	Acl		   *newAcl;
	Datum		aclDatum;
	bool		isNull;

	rel = FUNC15(TypeRelationId, RowExclusiveLock);

	tup = FUNC8(TYPEOID, FUNC4(typeOid));
	if (!FUNC3(tup))
		FUNC10(ERROR, "cache lookup failed for type %u", typeOid);
	typTup = (Form_pg_type) FUNC2(tup);

	FUNC13(repl_null, false, sizeof(repl_null));
	FUNC13(repl_repl, false, sizeof(repl_repl));

	repl_repl[Anum_pg_type_typowner - 1] = true;
	repl_val[Anum_pg_type_typowner - 1] = FUNC4(newOwnerId);

	aclDatum = FUNC11(tup,
							Anum_pg_type_typacl,
							FUNC7(rel),
							&isNull);
	/* Null ACLs do not require changes */
	if (!isNull)
	{
		newAcl = FUNC9(FUNC1(aclDatum),
							 typTup->typowner, newOwnerId);
		repl_repl[Anum_pg_type_typacl - 1] = true;
		repl_val[Anum_pg_type_typacl - 1] = FUNC6(newAcl);
	}

	tup = FUNC12(tup, FUNC7(rel), repl_val, repl_null,
							repl_repl);

	FUNC0(rel, &tup->t_self, tup);

	/* If it has an array type, update that too */
	if (FUNC5(typTup->typarray))
		FUNC16(typTup->typarray, newOwnerId);

	/* Clean up */
	FUNC14(rel, RowExclusiveLock);
}