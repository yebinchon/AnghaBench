#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_10__ {scalar_t__ atttypid; } ;
struct TYPE_9__ {int /*<<< orphan*/  flinfo; } ;
struct TYPE_8__ {int natts; } ;
typedef  TYPE_2__* FunctionCallInfo ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INT4OID ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(FunctionCallInfo fcinfo, int nargs,
							TupleDesc tupdesc)
{
	int			i;

	/* check that we have an int4 flag column */
	if (!tupdesc ||
		(nargs + 1) != tupdesc->natts ||
		FUNC0(tupdesc, nargs)->atttypid != INT4OID)
		FUNC1(ERROR, "type mismatch in hypothetical-set function");

	/* check that direct args match in type with aggregated args */
	for (i = 0; i < nargs; i++)
	{
		Form_pg_attribute attr = FUNC0(tupdesc, i);

		if (FUNC2(fcinfo->flinfo, i + 1) != attr->atttypid)
			FUNC1(ERROR, "type mismatch in hypothetical-set function");
	}
}