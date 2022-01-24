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
typedef  int int32 ;
struct TYPE_2__ {scalar_t__ typtype; int typtypmod; int /*<<< orphan*/  typbasetype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

Oid
FUNC7(Oid typid, int32 *typmod)
{
	/*
	 * We loop to find the bottom base type in a stack of domains.
	 */
	for (;;)
	{
		HeapTuple	tup;
		Form_pg_type typTup;

		tup = FUNC5(TYPEOID, FUNC3(typid));
		if (!FUNC2(tup))
			FUNC6(ERROR, "cache lookup failed for type %u", typid);
		typTup = (Form_pg_type) FUNC1(tup);
		if (typTup->typtype != TYPTYPE_DOMAIN)
		{
			/* Not a domain, so done */
			FUNC4(tup);
			break;
		}

		FUNC0(*typmod == -1);
		typid = typTup->typbasetype;
		*typmod = typTup->typtypmod;

		FUNC4(tup);
	}

	return typid;
}