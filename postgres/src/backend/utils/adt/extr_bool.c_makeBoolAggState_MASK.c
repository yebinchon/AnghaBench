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
struct TYPE_3__ {scalar_t__ aggtrue; scalar_t__ aggcount; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_1__ BoolAggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BoolAggState *
FUNC3(FunctionCallInfo fcinfo)
{
	BoolAggState *state;
	MemoryContext agg_context;

	if (!FUNC0(fcinfo, &agg_context))
		FUNC2(ERROR, "aggregate function called in non-aggregate context");

	state = (BoolAggState *) FUNC1(agg_context,
												sizeof(BoolAggState));
	state->aggcount = 0;
	state->aggtrue = 0;

	return state;
}