#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_11__ {scalar_t__ isnull; TYPE_1__* args; } ;
struct TYPE_10__ {int /*<<< orphan*/  fn_oid; scalar_t__ fn_strict; } ;
struct TYPE_9__ {int isnull; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* fcinfo ; 

Datum
FUNC7(FmgrInfo *flinfo, char *str, Oid typioparam, int32 typmod)
{
	FUNC4(fcinfo, 3);
	Datum		result;

	if (str == NULL && flinfo->fn_strict)
		return (Datum) 0;		/* just return null result */

	FUNC2(*fcinfo, flinfo, 3, InvalidOid, NULL, NULL);

	fcinfo->args[0].value = FUNC0(str);
	fcinfo->args[0].isnull = false;
	fcinfo->args[1].value = FUNC5(typioparam);
	fcinfo->args[1].isnull = false;
	fcinfo->args[2].value = FUNC3(typmod);
	fcinfo->args[2].isnull = false;

	result = FUNC1(fcinfo);

	/* Should get null result if and only if str is NULL */
	if (str == NULL)
	{
		if (!fcinfo->isnull)
			FUNC6(ERROR, "input function %u returned non-NULL",
				 flinfo->fn_oid);
	}
	else
	{
		if (fcinfo->isnull)
			FUNC6(ERROR, "input function %u returned NULL",
				 flinfo->fn_oid);
	}

	return result;
}