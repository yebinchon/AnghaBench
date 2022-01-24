#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tms {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct timeval {int dummy; } ;
struct TYPE_4__ {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct TYPE_3__ {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct fpm_scoreboard_proc_s {size_t memory; TYPE_2__ cpu_accepted; TYPE_1__ last_request_cpu; int /*<<< orphan*/  cpu_duration; int /*<<< orphan*/  accepted; struct timeval tv; int /*<<< orphan*/  duration; int /*<<< orphan*/  request_stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_REQUEST_FINISHED ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 struct fpm_scoreboard_proc_s* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_scoreboard_proc_s*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tms*) ; 
 size_t FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(void) /* {{{ */
{
	struct fpm_scoreboard_proc_s *proc;
	struct timeval now;
#ifdef HAVE_TIMES
	struct tms cpu;
#endif
	size_t memory = FUNC6(1);

	FUNC0(&now);
#ifdef HAVE_TIMES
	times(&cpu);
#endif

	proc = FUNC1(NULL, -1, 0);
	if (proc == NULL) {
		FUNC7(ZLOG_WARNING, "failed to acquire proc scoreboard");
		return;
	}
	proc->request_stage = FPM_REQUEST_FINISHED;
	proc->tv = now;
	FUNC4(&now, &proc->accepted, &proc->duration);
#ifdef HAVE_TIMES
	timersub(&proc->tv, &proc->accepted, &proc->cpu_duration);
	proc->last_request_cpu.tms_utime = cpu.tms_utime - proc->cpu_accepted.tms_utime;
	proc->last_request_cpu.tms_stime = cpu.tms_stime - proc->cpu_accepted.tms_stime;
	proc->last_request_cpu.tms_cutime = cpu.tms_cutime - proc->cpu_accepted.tms_cutime;
	proc->last_request_cpu.tms_cstime = cpu.tms_cstime - proc->cpu_accepted.tms_cstime;
#endif
	proc->memory = memory;
	FUNC2(proc);
	FUNC3();
}