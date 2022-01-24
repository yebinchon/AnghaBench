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
struct TYPE_2__ {int rolsuper; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_authid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHOID ; 
 scalar_t__ BOOTSTRAP_SUPERUSERID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RoleidCallback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ last_roleid ; 
 int last_roleid_is_super ; 
 int roleid_callback_registered ; 

bool
FUNC7(Oid roleid)
{
	bool		result;
	HeapTuple	rtup;

	/* Quick out for cache hit */
	if (FUNC4(last_roleid) && last_roleid == roleid)
		return last_roleid_is_super;

	/* Special escape path in case you deleted all your users. */
	if (!IsUnderPostmaster && roleid == BOOTSTRAP_SUPERUSERID)
		return true;

	/* OK, look up the information in pg_authid */
	rtup = FUNC6(AUTHOID, FUNC3(roleid));
	if (FUNC2(rtup))
	{
		result = ((Form_pg_authid) FUNC1(rtup))->rolsuper;
		FUNC5(rtup);
	}
	else
	{
		/* Report "not superuser" for invalid roleids */
		result = false;
	}

	/* If first time through, set up callback for cache flushes */
	if (!roleid_callback_registered)
	{
		FUNC0(AUTHOID,
									  RoleidCallback,
									  (Datum) 0);
		roleid_callback_registered = true;
	}

	/* Cache the result for next time */
	last_roleid = roleid;
	last_roleid_is_super = result;

	return result;
}