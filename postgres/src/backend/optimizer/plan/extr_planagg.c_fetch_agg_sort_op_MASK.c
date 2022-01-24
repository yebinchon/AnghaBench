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
struct TYPE_2__ {int /*<<< orphan*/  aggsortop; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_aggregate ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC5(Oid aggfnoid)
{
	HeapTuple	aggTuple;
	Form_pg_aggregate aggform;
	Oid			aggsortop;

	/* fetch aggregate entry from pg_aggregate */
	aggTuple = FUNC4(AGGFNOID, FUNC2(aggfnoid));
	if (!FUNC1(aggTuple))
		return InvalidOid;
	aggform = (Form_pg_aggregate) FUNC0(aggTuple);
	aggsortop = aggform->aggsortop;
	FUNC3(aggTuple);

	return aggsortop;
}