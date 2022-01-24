#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  relname; } ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; int /*<<< orphan*/  reltype; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC22(Oid myrelid, const char *newrelname, bool is_internal, bool is_index)
{
	Relation	targetrelation;
	Relation	relrelation;	/* for RELATION relation */
	HeapTuple	reltup;
	Form_pg_class relform;
	Oid			namespaceId;

	/*
	 * Grab a lock on the target relation, which we will NOT release until end
	 * of transaction.  We need at least a self-exclusive lock so that
	 * concurrent DDL doesn't overwrite the rename if they start updating
	 * while still seeing the old version.  The lock also guards against
	 * triggering relcache reloads in concurrent sessions, which might not
	 * handle this information changing under them.  For indexes, we can use a
	 * reduced lock level because RelationReloadIndexInfo() handles indexes
	 * specially.
	 */
	targetrelation = FUNC19(myrelid, is_index ? ShareUpdateExclusiveLock : AccessExclusiveLock);
	namespaceId = FUNC6(targetrelation);

	/*
	 * Find relation's pg_class tuple, and make sure newrelname isn't in use.
	 */
	relrelation = FUNC21(RelationRelationId, RowExclusiveLock);

	reltup = FUNC9(RELOID, FUNC4(myrelid));
	if (!FUNC2(reltup))	/* shouldn't happen */
		FUNC10(ERROR, "cache lookup failed for relation %u", myrelid);
	relform = (Form_pg_class) FUNC1(reltup);

	if (FUNC15(newrelname, namespaceId) != InvalidOid)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_TABLE),
				 FUNC13("relation \"%s\" already exists",
						newrelname)));

	/*
	 * Update pg_class tuple with new relname.  (Scribbling on reltup is OK
	 * because it's a copy...)
	 */
	FUNC17(&(relform->relname), newrelname);

	FUNC0(relrelation, &reltup->t_self, reltup);

	FUNC3(RelationRelationId, myrelid, 0,
								 InvalidOid, is_internal);

	FUNC16(reltup);
	FUNC20(relrelation, RowExclusiveLock);

	/*
	 * Also rename the associated type, if any.
	 */
	if (FUNC5(targetrelation->rd_rel->reltype))
		FUNC8(targetrelation->rd_rel->reltype,
						   newrelname, namespaceId);

	/*
	 * Also rename the associated constraint, if any.
	 */
	if (targetrelation->rd_rel->relkind == RELKIND_INDEX ||
		targetrelation->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
	{
		Oid			constraintId = FUNC14(myrelid);

		if (FUNC5(constraintId))
			FUNC7(constraintId, newrelname);
	}

	/*
	 * Close rel, but keep lock!
	 */
	FUNC18(targetrelation, NoLock);
}