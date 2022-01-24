#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  nspname; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_namespace ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_SCHEMA ; 
 int /*<<< orphan*/  ERRCODE_RESERVED_NAME ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_SCHEMA ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NAMESPACENAME ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 char const* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC23(const char *oldname, const char *newname)
{
	Oid			nspOid;
	HeapTuple	tup;
	Relation	rel;
	AclResult	aclresult;
	ObjectAddress address;
	Form_pg_namespace nspform;

	rel = FUNC22(NamespaceRelationId, RowExclusiveLock);

	tup = FUNC9(NAMESPACENAME, FUNC0(oldname));
	if (!FUNC4(tup))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_SCHEMA),
				 FUNC14("schema \"%s\" does not exist", oldname)));

	nspform = (Form_pg_namespace) FUNC2(tup);
	nspOid = nspform->oid;

	/* make sure the new name doesn't exist */
	if (FUNC8(FUNC16(newname, true)))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_SCHEMA),
				 FUNC14("schema \"%s\" already exists", newname)));

	/* must be owner */
	if (!FUNC20(nspOid, FUNC3()))
		FUNC10(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA,
					   oldname);

	/* must have CREATE privilege on database */
	aclresult = FUNC19(MyDatabaseId, FUNC3(), ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC10(aclresult, OBJECT_DATABASE,
					   FUNC15(MyDatabaseId));

	if (!allowSystemTableMods && FUNC6(newname))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_RESERVED_NAME),
				 FUNC14("unacceptable schema name \"%s\"", newname),
				 FUNC13("The prefix \"pg_\" is reserved for system schemas.")));

	/* rename */
	FUNC18(&nspform->nspname, newname);
	FUNC1(rel, &tup->t_self, tup);

	FUNC5(NamespaceRelationId, nspOid, 0);

	FUNC7(address, NamespaceRelationId, nspOid);

	FUNC21(rel, NoLock);
	FUNC17(tup);

	return address;
}