#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  objectSubId; void* objectId; void* classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int ObjectType ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 void* InvalidOid ; 
#define  OBJECT_OPCLASS 129 
#define  OBJECT_OPFAMILY 128 
 void* OperatorClassRelationId ; 
 void* OperatorFamilyRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC7(ObjectType objtype, List *object, bool missing_ok)
{
	Oid			amoid;
	ObjectAddress address;

	/* XXX no missing_ok support here */
	amoid = FUNC1(FUNC6(FUNC4(object)), false);
	object = FUNC5(object, 1);

	switch (objtype)
	{
		case OBJECT_OPCLASS:
			address.classId = OperatorClassRelationId;
			address.objectId = FUNC2(amoid, object, missing_ok);
			address.objectSubId = 0;
			break;
		case OBJECT_OPFAMILY:
			address.classId = OperatorFamilyRelationId;
			address.objectId = FUNC3(amoid, object, missing_ok);
			address.objectSubId = 0;
			break;
		default:
			FUNC0(ERROR, "unrecognized objtype: %d", (int) objtype);
			/* placate compiler, which doesn't know elog won't return */
			address.classId = InvalidOid;
			address.objectId = InvalidOid;
			address.objectSubId = 0;
	}

	return address;
}