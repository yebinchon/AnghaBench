#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* plan; } ;
struct TYPE_7__ {int /*<<< orphan*/  parallel_aware; } ;
typedef  int /*<<< orphan*/  SortState ;
typedef  int /*<<< orphan*/  SeqScanState ;
typedef  TYPE_2__ PlanState ;
typedef  int /*<<< orphan*/  ParallelWorkerContext ;
typedef  int /*<<< orphan*/  IndexScanState ;
typedef  int /*<<< orphan*/  IndexOnlyScanState ;
typedef  int /*<<< orphan*/  HashState ;
typedef  int /*<<< orphan*/  HashJoinState ;
typedef  int /*<<< orphan*/  ForeignScanState ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  int /*<<< orphan*/  BitmapHeapScanState ;
typedef  int /*<<< orphan*/  AppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  T_AppendState 137 
#define  T_BitmapHeapScanState 136 
#define  T_CustomScanState 135 
#define  T_ForeignScanState 134 
#define  T_HashJoinState 133 
#define  T_HashState 132 
#define  T_IndexOnlyScanState 131 
#define  T_IndexScanState 130 
#define  T_SeqScanState 129 
#define  T_SortState 128 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int (*) (TYPE_2__*,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC12(PlanState *planstate, ParallelWorkerContext *pwcxt)
{
	if (planstate == NULL)
		return false;

	switch (FUNC10(planstate))
	{
		case T_SeqScanState:
			if (planstate->plan->parallel_aware)
				FUNC8((SeqScanState *) planstate, pwcxt);
			break;
		case T_IndexScanState:
			if (planstate->plan->parallel_aware)
				FUNC7((IndexScanState *) planstate,
											  pwcxt);
			break;
		case T_IndexOnlyScanState:
			if (planstate->plan->parallel_aware)
				FUNC6((IndexOnlyScanState *) planstate,
												  pwcxt);
			break;
		case T_ForeignScanState:
			if (planstate->plan->parallel_aware)
				FUNC3((ForeignScanState *) planstate,
												pwcxt);
			break;
		case T_AppendState:
			if (planstate->plan->parallel_aware)
				FUNC0((AppendState *) planstate, pwcxt);
			break;
		case T_CustomScanState:
			if (planstate->plan->parallel_aware)
				FUNC2((CustomScanState *) planstate,
											   pwcxt);
			break;
		case T_BitmapHeapScanState:
			if (planstate->plan->parallel_aware)
				FUNC1((BitmapHeapScanState *) planstate,
											   pwcxt);
			break;
		case T_HashJoinState:
			if (planstate->plan->parallel_aware)
				FUNC5((HashJoinState *) planstate,
											 pwcxt);
			break;
		case T_HashState:
			/* even when not parallel-aware, for EXPLAIN ANALYZE */
			FUNC4((HashState *) planstate, pwcxt);
			break;
		case T_SortState:
			/* even when not parallel-aware, for EXPLAIN ANALYZE */
			FUNC9((SortState *) planstate, pwcxt);
			break;

		default:
			break;
	}

	return FUNC11(planstate, ExecParallelInitializeWorker,
								 pwcxt);
}