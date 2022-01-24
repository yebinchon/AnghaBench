#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static StringInfo
FUNC4(FunctionCallInfo fcinfo)
{
	StringInfo	state;
	MemoryContext aggcontext;
	MemoryContext oldcontext;

	if (!FUNC0(fcinfo, &aggcontext))
	{
		/* cannot be called directly because of internal-type argument */
		FUNC2(ERROR, "string_agg_transfn called in non-aggregate context");
	}

	/*
	 * Create state in aggregate context.  It'll stay there across subsequent
	 * calls.
	 */
	oldcontext = FUNC1(aggcontext);
	state = FUNC3();
	FUNC1(oldcontext);

	return state;
}