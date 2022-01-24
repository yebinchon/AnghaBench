#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  relam; } ;
struct TYPE_5__ {int amcanbackward; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC8(Oid indexid)
{
	bool		result;
	HeapTuple	ht_idxrel;
	Form_pg_class idxrelrec;
	IndexAmRoutine *amroutine;

	/* Fetch the pg_class tuple of the index relation */
	ht_idxrel = FUNC5(RELOID, FUNC3(indexid));
	if (!FUNC2(ht_idxrel))
		FUNC6(ERROR, "cache lookup failed for relation %u", indexid);
	idxrelrec = (Form_pg_class) FUNC0(ht_idxrel);

	/* Fetch the index AM's API struct */
	amroutine = FUNC1(idxrelrec->relam, false);

	result = amroutine->amcanbackward;

	FUNC7(amroutine);
	FUNC4(ht_idxrel);

	return result;
}