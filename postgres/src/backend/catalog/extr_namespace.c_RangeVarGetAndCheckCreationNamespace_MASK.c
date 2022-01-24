#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_5__ {int /*<<< orphan*/  relname; int /*<<< orphan*/  schemaname; scalar_t__ catalogname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ SharedInvalidMessageCounter ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 

Oid
FUNC22(RangeVar *relation,
									 LOCKMODE lockmode,
									 Oid *existing_relation_id)
{
	uint64		inval_count;
	Oid			relid;
	Oid			oldrelid = InvalidOid;
	Oid			nspid;
	Oid			oldnspid = InvalidOid;
	bool		retry = false;

	/*
	 * We check the catalog name and then ignore it.
	 */
	if (relation->catalogname)
	{
		if (FUNC21(relation->catalogname, FUNC14(MyDatabaseId)) != 0)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC13("cross-database references are not implemented: \"%s.%s.%s\"",
							relation->catalogname, relation->schemaname,
							relation->relname)));
	}

	/*
	 * As in RangeVarGetRelidExtended(), we guard against concurrent DDL
	 * operations by tracking whether any invalidation messages are processed
	 * while we're doing the name lookups and acquiring locks.  See comments
	 * in that function for a more detailed explanation of this logic.
	 */
	for (;;)
	{
		AclResult	aclresult;

		inval_count = SharedInvalidMessageCounter;

		/* Look up creation namespace and check for existing relation. */
		nspid = FUNC7(relation);
		FUNC0(FUNC5(nspid));
		if (existing_relation_id != NULL)
			relid = FUNC18(relation->relname, nspid);
		else
			relid = InvalidOid;

		/*
		 * In bootstrap processing mode, we don't bother with permissions or
		 * locking.  Permissions might not be working yet, and locking is
		 * unnecessary.
		 */
		if (FUNC2())
			break;

		/* Check namespace permissions. */
		aclresult = FUNC20(nspid, FUNC1(), ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC10(aclresult, OBJECT_SCHEMA,
						   FUNC15(nspid));

		if (retry)
		{
			/* If nothing changed, we're done. */
			if (relid == oldrelid && nspid == oldnspid)
				break;
			/* If creation namespace has changed, give up old lock. */
			if (nspid != oldnspid)
				FUNC8(NamespaceRelationId, oldnspid, 0,
									 AccessShareLock);
			/* If name points to something different, give up old lock. */
			if (relid != oldrelid && FUNC5(oldrelid) && lockmode != NoLock)
				FUNC9(oldrelid, lockmode);
		}

		/* Lock namespace. */
		if (nspid != oldnspid)
			FUNC3(NamespaceRelationId, nspid, 0, AccessShareLock);

		/* Lock relation, if required if and we have permission. */
		if (lockmode != NoLock && FUNC5(relid))
		{
			if (!FUNC19(relid, FUNC1()))
				FUNC10(ACLCHECK_NOT_OWNER, FUNC17(FUNC16(relid)),
							   relation->relname);
			if (relid != oldrelid)
				FUNC4(relid, lockmode);
		}

		/* If no invalidation message were processed, we're done! */
		if (inval_count == SharedInvalidMessageCounter)
			break;

		/* Something may have changed, so recheck our work. */
		retry = true;
		oldrelid = relid;
		oldnspid = nspid;
	}

	FUNC6(relation, nspid);
	if (existing_relation_id != NULL)
		*existing_relation_id = relid;
	return nspid;
}