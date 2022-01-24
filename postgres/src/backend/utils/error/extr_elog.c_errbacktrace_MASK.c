#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  assoc_context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  recursion_depth ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int
FUNC4(void)
{
	ErrorData   *edata = &errordata[errordata_stack_depth];
	MemoryContext oldcontext;

	FUNC0(false);

	recursion_depth++;
	FUNC1();
	oldcontext = FUNC2(edata->assoc_context);

	FUNC3(edata, 1);

	FUNC2(oldcontext);
	recursion_depth--;

	return 0;
}