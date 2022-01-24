#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_5__ {int /*<<< orphan*/  save_f_total_time; int /*<<< orphan*/  save_total; int /*<<< orphan*/  f_start; TYPE_1__* fs; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_self_time; int /*<<< orphan*/  f_total_time; int /*<<< orphan*/  f_numcalls; } ;
typedef  TYPE_1__ PgStat_FunctionCounts ;
typedef  TYPE_2__ PgStat_FunctionCallUsage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int have_function_stats ; 
 int /*<<< orphan*/  total_func_time ; 

void
FUNC3(PgStat_FunctionCallUsage *fcu, bool finalize)
{
	PgStat_FunctionCounts *fs = fcu->fs;
	instr_time	f_total;
	instr_time	f_others;
	instr_time	f_self;

	/* stats not wanted? */
	if (fs == NULL)
		return;

	/* total elapsed time in this function call */
	FUNC1(f_total);
	FUNC2(f_total, fcu->f_start);

	/* self usage: elapsed minus anything already charged to other calls */
	f_others = total_func_time;
	FUNC2(f_others, fcu->save_total);
	f_self = f_total;
	FUNC2(f_self, f_others);

	/* update backend-wide total time */
	FUNC0(total_func_time, f_self);

	/*
	 * Compute the new f_total_time as the total elapsed time added to the
	 * pre-call value of f_total_time.  This is necessary to avoid
	 * double-counting any time taken by recursive calls of myself.  (We do
	 * not need any similar kluge for self time, since that already excludes
	 * any recursive calls.)
	 */
	FUNC0(f_total, fcu->save_f_total_time);

	/* update counters in function stats table */
	if (finalize)
		fs->f_numcalls++;
	fs->f_total_time = f_total;
	FUNC0(fs->f_self_time, f_self);

	/* indicate that we have something to send */
	have_function_stats = true;
}