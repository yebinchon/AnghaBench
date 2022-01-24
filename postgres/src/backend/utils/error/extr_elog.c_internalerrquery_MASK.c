#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  assoc_context; int /*<<< orphan*/ * internalquery; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(const char *query)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];

	/* we don't bother incrementing recursion_depth */
	FUNC0();

	if (edata->internalquery)
	{
		FUNC2(edata->internalquery);
		edata->internalquery = NULL;
	}

	if (query)
		edata->internalquery = FUNC1(edata->assoc_context, query);

	return 0;					/* return value does not matter */
}