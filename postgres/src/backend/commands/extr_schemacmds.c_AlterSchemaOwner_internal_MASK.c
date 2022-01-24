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
struct TYPE_11__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  nspowner; int /*<<< orphan*/  nspname; } ;
struct TYPE_10__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_namespace ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AclResult ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int Anum_pg_namespace_nspacl ; 
 int Anum_pg_namespace_nspowner ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NAMESPACENAME ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ NamespaceRelationId ; 
 int Natts_pg_namespace ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int*,int,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(HeapTuple tup, Relation rel, Oid newOwnerId)
{
	Form_pg_namespace nspForm;

	FUNC0(tup->t_tableOid == NamespaceRelationId);
	FUNC0(FUNC10(rel) == NamespaceRelationId);

	nspForm = (Form_pg_namespace) FUNC3(tup);

	/*
	 * If the new owner is the same as the existing owner, consider the
	 * command to have succeeded.  This is for dump restoration purposes.
	 */
	if (nspForm->nspowner != newOwnerId)
	{
		Datum		repl_val[Natts_pg_namespace];
		bool		repl_null[Natts_pg_namespace];
		bool		repl_repl[Natts_pg_namespace];
		Acl		   *newAcl;
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	newtuple;
		AclResult	aclresult;

		/* Otherwise, must be owner of the existing object */
		if (!FUNC21(nspForm->oid, FUNC4()))
			FUNC12(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA,
						   FUNC6(nspForm->nspname));

		/* Must be able to become new owner */
		FUNC15(FUNC4(), newOwnerId);

		/*
		 * must have create-schema rights
		 *
		 * NOTE: This is different from other alter-owner checks in that the
		 * current user is checked for create privileges instead of the
		 * destination owner.  This is consistent with the CREATE case for
		 * schemas.  Because superusers will always have this right, we need
		 * no special case for them.
		 */
		aclresult = FUNC20(MyDatabaseId, FUNC4(),
										 ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC12(aclresult, OBJECT_DATABASE,
						   FUNC16(MyDatabaseId));

		FUNC19(repl_null, false, sizeof(repl_null));
		FUNC19(repl_repl, false, sizeof(repl_repl));

		repl_repl[Anum_pg_namespace_nspowner - 1] = true;
		repl_val[Anum_pg_namespace_nspowner - 1] = FUNC7(newOwnerId);

		/*
		 * Determine the modified ACL for the new owner.  This is only
		 * necessary when the ACL is non-null.
		 */
		aclDatum = FUNC11(NAMESPACENAME, tup,
								   Anum_pg_namespace_nspacl,
								   &isNull);
		if (!isNull)
		{
			newAcl = FUNC13(FUNC2(aclDatum),
								 nspForm->nspowner, newOwnerId);
			repl_repl[Anum_pg_namespace_nspacl - 1] = true;
			repl_val[Anum_pg_namespace_nspacl - 1] = FUNC8(newAcl);
		}

		newtuple = FUNC18(tup, FUNC9(rel), repl_val, repl_null, repl_repl);

		FUNC1(rel, &newtuple->t_self, newtuple);

		FUNC17(newtuple);

		/* Update owner dependency reference */
		FUNC14(NamespaceRelationId, nspForm->oid,
								newOwnerId);
	}

	FUNC5(NamespaceRelationId,
							  nspForm->oid, 0);
}