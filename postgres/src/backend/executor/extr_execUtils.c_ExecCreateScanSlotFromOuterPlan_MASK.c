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
typedef  int /*<<< orphan*/  TupleTableSlotOps ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  ScanState ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(EState *estate,
								ScanState *scanstate,
								const TupleTableSlotOps *tts_ops)
{
	PlanState  *outerPlan;
	TupleDesc	tupDesc;

	outerPlan = FUNC2(scanstate);
	tupDesc = FUNC0(outerPlan);

	FUNC1(estate, scanstate, tupDesc, tts_ops);
}