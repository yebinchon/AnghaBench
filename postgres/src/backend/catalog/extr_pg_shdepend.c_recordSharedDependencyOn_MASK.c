#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SharedDependencyType ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SharedDependRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(ObjectAddress *depender,
						 ObjectAddress *referenced,
						 SharedDependencyType deptype)
{
	Relation	sdepRel;

	/*
	 * Objects in pg_shdepend can't have SubIds.
	 */
	FUNC0(depender->objectSubId == 0);
	FUNC0(referenced->objectSubId == 0);

	/*
	 * During bootstrap, do nothing since pg_shdepend may not exist yet.
	 * initdb will fill in appropriate pg_shdepend entries after bootstrap.
	 */
	if (FUNC1())
		return;

	sdepRel = FUNC5(SharedDependRelationId, RowExclusiveLock);

	/* If the referenced object is pinned, do nothing. */
	if (!FUNC2(referenced->classId, referenced->objectId,
							  sdepRel))
	{
		FUNC3(sdepRel, depender->classId, depender->objectId,
						   depender->objectSubId,
						   referenced->classId, referenced->objectId,
						   deptype);
	}

	FUNC4(sdepRel, RowExclusiveLock);
}