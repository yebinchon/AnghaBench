#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct __user_cap_header_struct {int /*<<< orphan*/  effective; int /*<<< orphan*/  permitted; int /*<<< orphan*/  version; } ;
struct __user_cap_data_struct {int /*<<< orphan*/  effective; int /*<<< orphan*/  permitted; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  void* rlim_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_18__ {unsigned int sec; unsigned int msec; } ;
typedef  TYPE_4__ ngx_time_t ;
struct TYPE_19__ {int /*<<< orphan*/ * previous; } ;
typedef  TYPE_5__ ngx_listening_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_16__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_20__ {int /*<<< orphan*/  log; TYPE_3__** modules; TYPE_2__ listening; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_6__ ngx_cycle_t ;
typedef  int /*<<< orphan*/  ngx_cpuset_t ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_21__ {scalar_t__ priority; scalar_t__ rlimit_nofile; scalar_t__ rlimit_core; TYPE_1__ working_directory; scalar_t__ user; scalar_t__ transparent; int /*<<< orphan*/  group; int /*<<< orphan*/  username; } ;
typedef  TYPE_7__ ngx_core_conf_t ;
struct TYPE_17__ {scalar_t__ (* init_process ) (TYPE_6__*) ;} ;
struct TYPE_14__ {int pid; int* channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NGX_CONF_UNSET ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  PR_SET_DUMPABLE ; 
 int /*<<< orphan*/  PR_SET_KEEPCAPS ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SYS_capset ; 
 int /*<<< orphan*/  _LINUX_CAPABILITY_VERSION_1 ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_channel ; 
 int /*<<< orphan*/  ngx_channel_handler ; 
 int /*<<< orphan*/  ngx_core_module ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 scalar_t__ ngx_last_process ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct __user_cap_header_struct*,int) ; 
 scalar_t__ ngx_pid ; 
 scalar_t__ ngx_process_slot ; 
 TYPE_12__* ngx_processes ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 scalar_t__ FUNC22 (TYPE_6__*) ; 
 int FUNC23 (int /*<<< orphan*/ ,struct __user_cap_header_struct*,struct __user_cap_header_struct*) ; 

__attribute__((used)) static void
FUNC24(ngx_cycle_t *cycle, ngx_int_t worker)
{
    sigset_t          set;
    ngx_int_t         n;
    ngx_time_t       *tp;
    ngx_uint_t        i;
    ngx_cpuset_t     *cpu_affinity;
    struct rlimit     rlmt;
    ngx_core_conf_t  *ccf;
    ngx_listening_t  *ls;

    if (FUNC11(cycle, NULL) == NULL) {
        /* fatal */
        FUNC3(2);
    }

    ccf = (ngx_core_conf_t *) FUNC7(cycle->conf_ctx, ngx_core_module);

    if (worker >= 0 && ccf->priority != 0) {
        if (FUNC16(PRIO_PROCESS, 0, ccf->priority) == -1) {
            FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setpriority(%d) failed", ccf->priority);
        }
    }

    if (ccf->rlimit_nofile != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_nofile;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_nofile;

        if (FUNC17(RLIMIT_NOFILE, &rlmt) == -1) {
            FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setrlimit(RLIMIT_NOFILE, %i) failed",
                          ccf->rlimit_nofile);
        }
    }

    if (ccf->rlimit_core != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_core;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_core;

        if (FUNC17(RLIMIT_CORE, &rlmt) == -1) {
            FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setrlimit(RLIMIT_CORE, %O) failed",
                          ccf->rlimit_core);
        }
    }

    if (FUNC4() == 0) {
        if (FUNC15(ccf->group) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "setgid(%d) failed", ccf->group);
            /* fatal */
            FUNC3(2);
        }

        if (FUNC5(ccf->username, ccf->group) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "initgroups(%s, %d) failed",
                          ccf->username, ccf->group);
        }

#if (NGX_HAVE_PR_SET_KEEPCAPS && NGX_HAVE_CAPABILITIES)
        if (ccf->transparent && ccf->user) {
            if (prctl(PR_SET_KEEPCAPS, 1, 0, 0, 0) == -1) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "prctl(PR_SET_KEEPCAPS, 1) failed");
                /* fatal */
                exit(2);
            }
        }
#endif

        if (FUNC18(ccf->user) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "setuid(%d) failed", ccf->user);
            /* fatal */
            FUNC3(2);
        }

#if (NGX_HAVE_CAPABILITIES)
        if (ccf->transparent && ccf->user) {
            struct __user_cap_data_struct    data;
            struct __user_cap_header_struct  header;

            ngx_memzero(&header, sizeof(struct __user_cap_header_struct));
            ngx_memzero(&data, sizeof(struct __user_cap_data_struct));

            header.version = _LINUX_CAPABILITY_VERSION_1;
            data.effective = CAP_TO_MASK(CAP_NET_RAW);
            data.permitted = data.effective;

            if (syscall(SYS_capset, &header, &data) == -1) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "capset() failed");
                /* fatal */
                exit(2);
            }
        }
#endif
    }

    if (worker >= 0) {
        cpu_affinity = FUNC8(worker);

        if (cpu_affinity) {
            FUNC12(cpu_affinity, cycle->log);
        }
    }

#if (NGX_HAVE_PR_SET_DUMPABLE)

    /* allow coredump after setuid() in Linux 2.4.x */

    if (prctl(PR_SET_DUMPABLE, 1, 0, 0, 0) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "prctl(PR_SET_DUMPABLE) failed");
    }

#endif

    if (ccf->working_directory.len) {
        if (FUNC1((char *) ccf->working_directory.data) == -1) {
            FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "chdir(\"%s\") failed", ccf->working_directory.data);
            /* fatal */
            FUNC3(2);
        }
    }

    FUNC19(&set);

    if (FUNC20(SIG_SETMASK, &set, NULL) == -1) {
        FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "sigprocmask() failed");
    }

    tp = FUNC13();
    FUNC21(((unsigned) ngx_pid << 16) ^ tp->sec ^ tp->msec);

    /*
     * disable deleting previous events for the listening sockets because
     * in the worker processes there are no events at all at this point
     */
    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {
        ls[i].previous = NULL;
    }

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->init_process) {
            if (cycle->modules[i]->init_process(cycle) == NGX_ERROR) {
                /* fatal */
                FUNC3(2);
            }
        }
    }

    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].pid == -1) {
            continue;
        }

        if (n == ngx_process_slot) {
            continue;
        }

        if (ngx_processes[n].channel[1] == -1) {
            continue;
        }

        if (FUNC2(ngx_processes[n].channel[1]) == -1) {
            FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "close() channel failed");
        }
    }

    if (FUNC2(ngx_processes[ngx_process_slot].channel[0]) == -1) {
        FUNC9(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close() channel failed");
    }

#if 0
    ngx_last_process = 0;
#endif

    if (FUNC6(cycle, ngx_channel, NGX_READ_EVENT,
                              ngx_channel_handler)
        == NGX_ERROR)
    {
        /* fatal */
        FUNC3(2);
    }
}