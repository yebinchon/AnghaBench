#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SHARED_DEPENDENCY_INVALID ; 
 int /*<<< orphan*/  SharedDependRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(Oid classId, Oid objectId, int32 objectSubId)
{
	Relation	sdepRel;

	sdepRel = FUNC2(SharedDependRelationId, RowExclusiveLock);

	FUNC0(sdepRel, classId, objectId, objectSubId,
						(objectSubId == 0),
						InvalidOid, InvalidOid,
						SHARED_DEPENDENCY_INVALID);

	FUNC1(sdepRel, RowExclusiveLock);
}