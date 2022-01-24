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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_8__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Datum ;
typedef  char const Acl ;

/* Variables and functions */
 int Anum_pg_namespace_nspacl ; 
 int Anum_pg_namespace_nspname ; 
 int Anum_pg_namespace_nspowner ; 
 int Anum_pg_namespace_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_SCHEMA ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMESPACENAME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NamespaceOidIndexId ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int Natts_pg_namespace ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC21(const char *nspName, Oid ownerId, bool isTemp)
{
	Relation	nspdesc;
	HeapTuple	tup;
	Oid			nspoid;
	bool		nulls[Natts_pg_namespace];
	Datum		values[Natts_pg_namespace];
	NameData	nname;
	TupleDesc	tupDesc;
	ObjectAddress myself;
	int			i;
	Acl		   *nspacl;

	/* sanity checks */
	if (!nspName)
		FUNC9(ERROR, "no namespace name supplied");

	/* make sure there is no existing namespace of same name */
	if (FUNC8(NAMESPACENAME, FUNC7(nspName)))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_DUPLICATE_SCHEMA),
				 FUNC12("schema \"%s\" already exists", nspName)));

	if (!isTemp)
		nspacl = FUNC13(OBJECT_SCHEMA, ownerId,
									  InvalidOid);
	else
		nspacl = NULL;

	nspdesc = FUNC20(NamespaceRelationId, RowExclusiveLock);
	tupDesc = nspdesc->rd_att;

	/* initialize nulls and values */
	for (i = 0; i < Natts_pg_namespace; i++)
	{
		nulls[i] = false;
		values[i] = (Datum) NULL;
	}

	nspoid = FUNC2(nspdesc, NamespaceOidIndexId,
								Anum_pg_namespace_oid);
	values[Anum_pg_namespace_oid - 1] = FUNC5(nspoid);
	FUNC15(&nname, nspName);
	values[Anum_pg_namespace_nspname - 1] = FUNC4(&nname);
	values[Anum_pg_namespace_nspowner - 1] = FUNC5(ownerId);
	if (nspacl != NULL)
		values[Anum_pg_namespace_nspacl - 1] = FUNC7(nspacl);
	else
		nulls[Anum_pg_namespace_nspacl - 1] = true;


	tup = FUNC14(tupDesc, values, nulls);

	FUNC1(nspdesc, tup);
	FUNC0(FUNC6(nspoid));

	FUNC19(nspdesc, RowExclusiveLock);

	/* Record dependencies */
	myself.classId = NamespaceRelationId;
	myself.objectId = nspoid;
	myself.objectSubId = 0;

	/* dependency on owner */
	FUNC18(NamespaceRelationId, nspoid, ownerId);

	/* dependences on roles mentioned in default ACL */
	FUNC17(NamespaceRelationId, nspoid, 0, ownerId, nspacl);

	/* dependency on extension ... but not for magic temp schemas */
	if (!isTemp)
		FUNC16(&myself, false);

	/* Post creation hook for new schema */
	FUNC3(NamespaceRelationId, nspoid, 0);

	return nspoid;
}