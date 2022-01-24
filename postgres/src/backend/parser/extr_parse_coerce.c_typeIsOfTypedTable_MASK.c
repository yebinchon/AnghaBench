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
struct TYPE_2__ {scalar_t__ reloftype; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC7(Oid reltypeId, Oid reloftypeId)
{
	Oid			relid = FUNC6(reltypeId);
	bool		result = false;

	if (relid)
	{
		HeapTuple	tp;
		Form_pg_class reltup;

		tp = FUNC4(RELOID, FUNC2(relid));
		if (!FUNC1(tp))
			FUNC5(ERROR, "cache lookup failed for relation %u", relid);

		reltup = (Form_pg_class) FUNC0(tp);
		if (reltup->reloftype == reloftypeId)
			result = true;

		FUNC3(tp);
	}

	return result;
}