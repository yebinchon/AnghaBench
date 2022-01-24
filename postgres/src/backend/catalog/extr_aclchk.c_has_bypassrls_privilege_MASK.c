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
struct TYPE_2__ {int rolbypassrls; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_authid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

bool
FUNC6(Oid roleid)
{
	bool		result = false;
	HeapTuple	utup;

	/* Superusers bypass all permission checking. */
	if (FUNC5(roleid))
		return true;

	utup = FUNC4(AUTHOID, FUNC2(roleid));
	if (FUNC1(utup))
	{
		result = ((Form_pg_authid) FUNC0(utup))->rolbypassrls;
		FUNC3(utup);
	}
	return result;
}