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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ time_t ;
struct timeval {unsigned long tv_sec; scalar_t__ tv_usec; } ;
struct fpm_scoreboard_s {char* pool; int nprocs; scalar_t__ slow_rq; scalar_t__ max_children_reached; scalar_t__ active_max; scalar_t__ active; scalar_t__ idle; scalar_t__ lq_len; scalar_t__ lq_max; scalar_t__ lq; scalar_t__ requests; scalar_t__ start_epoch; int /*<<< orphan*/  pm; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tms_utime; int tms_stime; int tms_cutime; int tms_cstime; } ;
struct fpm_scoreboard_proc_s {int used; scalar_t__ request_stage; char* request_method; char* request_uri; char* query_string; char* auth_user; char* script_filename; scalar_t__ memory; scalar_t__ content_length; int /*<<< orphan*/  accepted; struct timeval duration; scalar_t__ requests; scalar_t__ start_epoch; scalar_t__ pid; TYPE_2__ cpu_duration; TYPE_1__ last_request_cpu; } ;

/* Variables and functions */
 scalar_t__ FPM_REQUEST_ACCEPTING ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*) ; 
 char* FUNC8 (scalar_t__) ; 
 struct fpm_scoreboard_s* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 () ; 
 struct fpm_scoreboard_proc_s* FUNC11 (struct fpm_scoreboard_s*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fpm_scoreboard_proc_s*) ; 
 int /*<<< orphan*/  FUNC13 (struct fpm_scoreboard_s*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC17(zval *status)
{
	struct fpm_scoreboard_s scoreboard, *scoreboard_p;
	zval fpm_proc_stats, fpm_proc_stat;
	time_t now_epoch;
	struct timeval duration, now;
	double cpu;
	int i;


	scoreboard_p = FUNC9(NULL, 1);
	if (!scoreboard_p) {
		FUNC16(ZLOG_NOTICE, "[pool %s] status: scoreboard already in use.", scoreboard_p->pool);
		return -1;
	}

	/* copy the scoreboard not to bother other processes */
	scoreboard = *scoreboard_p;
	struct fpm_scoreboard_proc_s procs[scoreboard.nprocs];

	struct fpm_scoreboard_proc_s *proc_p;
	for(i=0; i<scoreboard.nprocs; i++) {
		proc_p = FUNC11(scoreboard_p, i, 1);
		if (!proc_p){
			procs[i].used=-1;
			continue;
		}
		procs[i] = *proc_p;
		FUNC12(proc_p);
	}
	FUNC13(scoreboard_p);

	now_epoch = FUNC14(NULL);
	FUNC7(&now);

	FUNC6(status);
	FUNC3(status, "pool", scoreboard.pool);
	FUNC3(status, "process-manager", FUNC0(scoreboard.pm));
	FUNC2(status, "start-time", scoreboard.start_epoch);
	FUNC2(status, "start-since", now_epoch - scoreboard.start_epoch);
	FUNC2(status, "accepted-conn", scoreboard.requests);
#ifdef HAVE_FPM_LQ
	add_assoc_long(status, "listen-queue", scoreboard.lq);
	add_assoc_long(status, "max-listen-queue", scoreboard.lq_max);
	add_assoc_long(status, "listen-queue-len", scoreboard.lq_len);
#endif
	FUNC2(status, "idle-processes", scoreboard.idle);
	FUNC2(status, "active-processes", scoreboard.active);
	FUNC2(status, "total-processes", scoreboard.idle + scoreboard.active);
	FUNC2(status, "max-active-processes", scoreboard.active_max);
	FUNC2(status, "max-children-reached", scoreboard.max_children_reached);
	FUNC2(status, "slow-requests", scoreboard.slow_rq);

	FUNC6(&fpm_proc_stats);
	for(i=0; i<scoreboard.nprocs; i++) {
		if (!procs[i].used) {
			continue;
		}
		proc_p = &procs[i];
#ifdef HAVE_FPM_LQ
		/* prevent NaN */
		if (procs[i].cpu_duration.tv_sec == 0 && procs[i].cpu_duration.tv_usec == 0) {
			cpu = 0.;
		} else {
			cpu = (procs[i].last_request_cpu.tms_utime + procs[i].last_request_cpu.tms_stime + procs[i].last_request_cpu.tms_cutime + procs[i].last_request_cpu.tms_cstime) / fpm_scoreboard_get_tick() / (procs[i].cpu_duration.tv_sec + procs[i].cpu_duration.tv_usec / 1000000.) * 100.;
		}
#endif

		FUNC6(&fpm_proc_stat);
		FUNC2(&fpm_proc_stat, "pid", procs[i].pid);
		FUNC3(&fpm_proc_stat, "state", FUNC8(procs[i].request_stage));
		FUNC2(&fpm_proc_stat, "start-time", procs[i].start_epoch);
		FUNC2(&fpm_proc_stat, "start-since", now_epoch - procs[i].start_epoch);
		FUNC2(&fpm_proc_stat, "requests", procs[i].requests);
		if (procs[i].request_stage == FPM_REQUEST_ACCEPTING) {
			duration = procs[i].duration;
		} else {
			FUNC15(&now, &procs[i].accepted, &duration);
		}
		FUNC2(&fpm_proc_stat, "request-duration", duration.tv_sec * 1000000UL + duration.tv_usec);
		FUNC3(&fpm_proc_stat, "request-method", procs[i].request_method[0] != '\0' ? procs[i].request_method : "-");
		FUNC3(&fpm_proc_stat, "request-uri", procs[i].request_uri);
		FUNC3(&fpm_proc_stat, "query-string", procs[i].query_string);
		FUNC2(&fpm_proc_stat, "request-length", procs[i].content_length);
		FUNC3(&fpm_proc_stat, "user", procs[i].auth_user[0] != '\0' ? procs[i].auth_user : "-");
		FUNC3(&fpm_proc_stat, "script", procs[i].script_filename[0] != '\0' ? procs[i].script_filename : "-");
#ifdef HAVE_FPM_LQ
		add_assoc_double(&fpm_proc_stat, "last-request-cpu", procs[i].request_stage == FPM_REQUEST_ACCEPTING ? cpu : 0.);
#endif
		FUNC2(&fpm_proc_stat, "last-request-memory", procs[i].request_stage == FPM_REQUEST_ACCEPTING ? procs[i].memory : 0);
		FUNC5(&fpm_proc_stats, &fpm_proc_stat);
	}
	FUNC4(status, "procs", &fpm_proc_stats);
	return 0;
}