#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ typtype; int /*<<< orphan*/  typrelid; int /*<<< orphan*/  typbasetype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

Oid
FUNC6(Oid type_id)
{
	HeapTuple	typeTuple;
	Form_pg_type type;
	Oid			result;

	for (;;)
	{
		typeTuple = FUNC4(TYPEOID, FUNC2(type_id));
		if (!FUNC1(typeTuple))
			FUNC5(ERROR, "cache lookup failed for type %u", type_id);
		type = (Form_pg_type) FUNC0(typeTuple);
		if (type->typtype != TYPTYPE_DOMAIN)
		{
			/* Not a domain, so done looking through domains */
			break;
		}
		/* It is a domain, so examine the base type instead */
		type_id = type->typbasetype;
		FUNC3(typeTuple);
	}
	result = type->typrelid;
	FUNC3(typeTuple);
	return result;
}