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
struct TYPE_3__ {int running; double total; int nloops; scalar_t__ tuplecount; scalar_t__ firsttuple; int /*<<< orphan*/  counter; int /*<<< orphan*/  starttime; int /*<<< orphan*/  ntuples; int /*<<< orphan*/  startup; } ;
typedef  TYPE_1__ Instrumentation ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(Instrumentation *instr)
{
	double		totaltime;

	/* Skip if nothing has happened, or already shut down */
	if (!instr->running)
		return;

	if (!FUNC1(instr->starttime))
		FUNC3(ERROR, "InstrEndLoop called on running node");

	/* Accumulate per-cycle statistics into totals */
	totaltime = FUNC0(instr->counter);

	instr->startup += instr->firsttuple;
	instr->total += totaltime;
	instr->ntuples += instr->tuplecount;
	instr->nloops += 1;

	/* Reset for next cycle (if any) */
	instr->running = false;
	FUNC2(instr->starttime);
	FUNC2(instr->counter);
	instr->firsttuple = 0;
	instr->tuplecount = 0;
}