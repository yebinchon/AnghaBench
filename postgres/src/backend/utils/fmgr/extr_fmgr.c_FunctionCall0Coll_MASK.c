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
struct TYPE_9__ {scalar_t__ isnull; } ;
struct TYPE_8__ {int /*<<< orphan*/  fn_oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* fcinfo ; 

Datum
FUNC4(FmgrInfo *flinfo, Oid collation)
{
	FUNC2(fcinfo, 0);
	Datum		result;

	FUNC1(*fcinfo, flinfo, 0, collation, NULL, NULL);

	result = FUNC0(fcinfo);

	/* Check for null result, since caller is clearly not expecting one */
	if (fcinfo->isnull)
		FUNC3(ERROR, "function %u returned NULL", flinfo->fn_oid);

	return result;
}