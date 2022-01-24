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
struct TYPE_4__ {int /*<<< orphan*/ * pcxt; int /*<<< orphan*/ * area; int /*<<< orphan*/  param_exec; scalar_t__ jit_instrumentation; int /*<<< orphan*/  planstate; scalar_t__ instrumentation; } ;
typedef  TYPE_1__ ParallelExecutorInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  InvalidDsaPointer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(ParallelExecutorInfo *pei)
{
	/* Accumulate instrumentation, if any. */
	if (pei->instrumentation)
		FUNC2(pei->planstate,
											pei->instrumentation);

	/* Accumulate JIT instrumentation, if any. */
	if (pei->jit_instrumentation)
		FUNC3(pei->planstate,
											   pei->jit_instrumentation);

	/* Free any serialized parameters. */
	if (FUNC1(pei->param_exec))
	{
		FUNC5(pei->area, pei->param_exec);
		pei->param_exec = InvalidDsaPointer;
	}
	if (pei->area != NULL)
	{
		FUNC4(pei->area);
		pei->area = NULL;
	}
	if (pei->pcxt != NULL)
	{
		FUNC0(pei->pcxt);
		pei->pcxt = NULL;
	}
	FUNC6(pei);
}