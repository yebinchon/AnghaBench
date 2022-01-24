#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
typedef  int /*<<< orphan*/  Type ;
struct TYPE_5__ {scalar_t__ typtype; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
typedef  scalar_t__ ObjectType ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC9(ObjectType objtype, TypeName *typename, bool missing_ok)
{
	ObjectAddress address;
	Type		tup;

	address.classId = TypeRelationId;
	address.objectId = InvalidOid;
	address.objectSubId = 0;

	tup = FUNC2(NULL, typename, NULL, missing_ok);
	if (!FUNC1(tup))
	{
		if (!missing_ok)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_UNDEFINED_OBJECT),
					 FUNC7("type \"%s\" does not exist",
							FUNC4(typename))));
		return address;
	}
	address.objectId = FUNC8(tup);

	if (objtype == OBJECT_DOMAIN)
	{
		if (((Form_pg_type) FUNC0(tup))->typtype != TYPTYPE_DOMAIN)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("\"%s\" is not a domain",
							FUNC4(typename))));
	}

	FUNC3(tup);

	return address;
}