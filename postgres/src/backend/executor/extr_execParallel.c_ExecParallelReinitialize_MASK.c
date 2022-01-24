#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  toc; } ;
struct TYPE_17__ {int /*<<< orphan*/ * es_query_dsa; } ;
struct TYPE_16__ {int /*<<< orphan*/  param_exec; } ;
struct TYPE_15__ {int finished; TYPE_7__* pcxt; int /*<<< orphan*/ * area; int /*<<< orphan*/  param_exec; int /*<<< orphan*/ * reader; int /*<<< orphan*/  tqueue; } ;
struct TYPE_14__ {TYPE_4__* state; } ;
typedef  TYPE_1__ PlanState ;
typedef  TYPE_2__ ParallelExecutorInfo ;
typedef  TYPE_3__ FixedParallelExecutorState ;
typedef  TYPE_4__ EState ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  InvalidDsaPointer ; 
 int /*<<< orphan*/  PARALLEL_KEY_EXECUTOR_FIXED ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC11(PlanState *planstate,
						 ParallelExecutorInfo *pei,
						 Bitmapset *sendParams)
{
	EState	   *estate = planstate->state;
	FixedParallelExecutorState *fpes;

	/* Old workers must already be shut down */
	FUNC0(pei->finished);

	/*
	 * Force any initplan outputs that we're going to pass to workers to be
	 * evaluated, if they weren't already (see comments in
	 * ExecInitParallelPlan).
	 */
	FUNC4(sendParams, FUNC5(estate));

	FUNC6(pei->pcxt);
	pei->tqueue = FUNC3(pei->pcxt, true);
	pei->reader = NULL;
	pei->finished = false;

	fpes = FUNC10(pei->pcxt->toc, PARALLEL_KEY_EXECUTOR_FIXED, false);

	/* Free any serialized parameters from the last round. */
	if (FUNC1(fpes->param_exec))
	{
		FUNC9(pei->area, fpes->param_exec);
		fpes->param_exec = InvalidDsaPointer;
	}

	/* Serialize current parameter values if required. */
	if (!FUNC8(sendParams))
	{
		pei->param_exec = FUNC7(estate, sendParams,
												   pei->area);
		fpes->param_exec = pei->param_exec;
	}

	/* Traverse plan tree and let each child node reset associated state. */
	estate->es_query_dsa = pei->area;
	FUNC2(planstate, pei->pcxt);
	estate->es_query_dsa = NULL;
}