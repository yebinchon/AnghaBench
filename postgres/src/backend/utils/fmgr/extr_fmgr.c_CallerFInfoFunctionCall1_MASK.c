#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_8__ {int isnull; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  (* PGFunction ) (TYPE_2__*) ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*) ; 
 TYPE_2__* fcinfo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

Datum
FUNC4(PGFunction func, FmgrInfo *flinfo, Oid collation, Datum arg1)
{
	FUNC1(fcinfo, 1);
	Datum		result;

	FUNC0(*fcinfo, flinfo, 1, collation, NULL, NULL);

	fcinfo->args[0].value = arg1;
	fcinfo->args[0].isnull = false;

	result = (*func) (fcinfo);

	/* Check for null result, since caller is clearly not expecting one */
	if (fcinfo->isnull)
		FUNC2(ERROR, "function %p returned NULL", (void *) func);

	return result;
}