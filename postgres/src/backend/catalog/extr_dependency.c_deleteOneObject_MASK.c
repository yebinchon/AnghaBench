#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_depend_classid ; 
 int /*<<< orphan*/  Anum_pg_depend_objid ; 
 int /*<<< orphan*/  Anum_pg_depend_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  DependDependerIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int PERFORM_DELETION_CONCURRENTLY ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(const ObjectAddress *object, Relation *depRel, int flags)
{
	ScanKeyData key[3];
	int			nkeys;
	SysScanDesc scan;
	HeapTuple	tup;

	/* DROP hook of the objects being removed */
	FUNC7(object->classId, object->objectId,
							object->objectSubId, flags);

	/*
	 * Close depRel if we are doing a drop concurrently.  The object deletion
	 * subroutine will commit the current transaction, so we can't keep the
	 * relation open across doDeletion().
	 */
	if (flags & PERFORM_DELETION_CONCURRENTLY)
		FUNC15(*depRel, RowExclusiveLock);

	/*
	 * Delete the object itself, in an object-type-dependent way.
	 *
	 * We used to do this after removing the outgoing dependency links, but it
	 * seems just as reasonable to do it beforehand.  In the concurrent case
	 * we *must* do it in this order, because we can't make any transactional
	 * updates before calling doDeletion() --- they'd get committed right
	 * away, which is not cool if the deletion then fails.
	 */
	FUNC11(object, flags);

	/*
	 * Reopen depRel if we closed it above
	 */
	if (flags & PERFORM_DELETION_CONCURRENTLY)
		*depRel = FUNC16(DependRelationId, RowExclusiveLock);

	/*
	 * Now remove any pg_depend records that link from this object to others.
	 * (Any records linking to this object should be gone already.)
	 *
	 * When dropping a whole object (subId = 0), remove all pg_depend records
	 * for its sub-objects too.
	 */
	FUNC9(&key[0],
				Anum_pg_depend_classid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(object->classId));
	FUNC9(&key[1],
				Anum_pg_depend_objid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(object->objectId));
	if (object->objectSubId != 0)
	{
		FUNC9(&key[2],
					Anum_pg_depend_objsubid,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC6(object->objectSubId));
		nkeys = 3;
	}
	else
		nkeys = 2;

	scan = FUNC12(*depRel, DependDependerIndexId, true,
							  NULL, nkeys, key);

	while (FUNC5(tup = FUNC14(scan)))
	{
		FUNC0(*depRel, &tup->t_self);
	}

	FUNC13(scan);

	/*
	 * Delete shared dependency references related to this object.  Again, if
	 * subId = 0, remove records for sub-objects too.
	 */
	FUNC10(object->classId, object->objectId,
									 object->objectSubId);


	/*
	 * Delete any comments, security labels, or initial privileges associated
	 * with this object.  (This is a convenient place to do these things,
	 * rather than having every object type know to do it.)
	 */
	FUNC2(object->objectId, object->classId, object->objectSubId);
	FUNC4(object);
	FUNC3(object);

	/*
	 * CommandCounterIncrement here to ensure that preceding changes are all
	 * visible to the next deletion step.
	 */
	FUNC1();

	/*
	 * And we're done!
	 */
}