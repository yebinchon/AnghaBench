
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct __user_cap_header_struct {int effective; int permitted; int version; } ;
struct __user_cap_data_struct {int effective; int permitted; int version; } ;
typedef int sigset_t ;
typedef void* rlim_t ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {unsigned int sec; unsigned int msec; } ;
typedef TYPE_4__ ngx_time_t ;
struct TYPE_19__ {int * previous; } ;
typedef TYPE_5__ ngx_listening_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_20__ {int log; TYPE_3__** modules; TYPE_2__ listening; int conf_ctx; } ;
typedef TYPE_6__ ngx_cycle_t ;
typedef int ngx_cpuset_t ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_21__ {scalar_t__ priority; scalar_t__ rlimit_nofile; scalar_t__ rlimit_core; TYPE_1__ working_directory; scalar_t__ user; scalar_t__ transparent; int group; int username; } ;
typedef TYPE_7__ ngx_core_conf_t ;
struct TYPE_17__ {scalar_t__ (* init_process ) (TYPE_6__*) ;} ;
struct TYPE_14__ {int pid; int* channel; } ;


 int CAP_NET_RAW ;
 int CAP_TO_MASK (int ) ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_EMERG ;
 int NGX_READ_EVENT ;
 int PRIO_PROCESS ;
 int PR_SET_DUMPABLE ;
 int PR_SET_KEEPCAPS ;
 int RLIMIT_CORE ;
 int RLIMIT_NOFILE ;
 int SIG_SETMASK ;
 int SYS_capset ;
 int _LINUX_CAPABILITY_VERSION_1 ;
 int chdir (char*) ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ geteuid () ;
 int initgroups (int ,int ) ;
 scalar_t__ ngx_add_channel_event (TYPE_6__*,int ,int ,int ) ;
 int ngx_channel ;
 int ngx_channel_handler ;
 int ngx_core_module ;
 int ngx_errno ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int * ngx_get_cpu_affinity (scalar_t__) ;
 scalar_t__ ngx_last_process ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memzero (struct __user_cap_header_struct*,int) ;
 scalar_t__ ngx_pid ;
 scalar_t__ ngx_process_slot ;
 TYPE_12__* ngx_processes ;
 int * ngx_set_environment (TYPE_6__*,int *) ;
 int ngx_setaffinity (int *,int ) ;
 TYPE_4__* ngx_timeofday () ;
 int prctl (int ,int,int ,int ,int ) ;
 int setgid (int ) ;
 int setpriority (int ,int ,scalar_t__) ;
 int setrlimit (int ,struct rlimit*) ;
 int setuid (scalar_t__) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int srandom (unsigned int) ;
 scalar_t__ stub1 (TYPE_6__*) ;
 int syscall (int ,struct __user_cap_header_struct*,struct __user_cap_header_struct*) ;

__attribute__((used)) static void
ngx_worker_process_init(ngx_cycle_t *cycle, ngx_int_t worker)
{
    sigset_t set;
    ngx_int_t n;
    ngx_time_t *tp;
    ngx_uint_t i;
    ngx_cpuset_t *cpu_affinity;
    struct rlimit rlmt;
    ngx_core_conf_t *ccf;
    ngx_listening_t *ls;

    if (ngx_set_environment(cycle, ((void*)0)) == ((void*)0)) {

        exit(2);
    }

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    if (worker >= 0 && ccf->priority != 0) {
        if (setpriority(PRIO_PROCESS, 0, ccf->priority) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setpriority(%d) failed", ccf->priority);
        }
    }

    if (ccf->rlimit_nofile != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_nofile;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_nofile;

        if (setrlimit(RLIMIT_NOFILE, &rlmt) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setrlimit(RLIMIT_NOFILE, %i) failed",
                          ccf->rlimit_nofile);
        }
    }

    if (ccf->rlimit_core != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_core;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_core;

        if (setrlimit(RLIMIT_CORE, &rlmt) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setrlimit(RLIMIT_CORE, %O) failed",
                          ccf->rlimit_core);
        }
    }

    if (geteuid() == 0) {
        if (setgid(ccf->group) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "setgid(%d) failed", ccf->group);

            exit(2);
        }

        if (initgroups(ccf->username, ccf->group) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "initgroups(%s, %d) failed",
                          ccf->username, ccf->group);
        }
        if (setuid(ccf->user) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "setuid(%d) failed", ccf->user);

            exit(2);
        }
    }

    if (worker >= 0) {
        cpu_affinity = ngx_get_cpu_affinity(worker);

        if (cpu_affinity) {
            ngx_setaffinity(cpu_affinity, cycle->log);
        }
    }
    if (ccf->working_directory.len) {
        if (chdir((char *) ccf->working_directory.data) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "chdir(\"%s\") failed", ccf->working_directory.data);

            exit(2);
        }
    }

    sigemptyset(&set);

    if (sigprocmask(SIG_SETMASK, &set, ((void*)0)) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "sigprocmask() failed");
    }

    tp = ngx_timeofday();
    srandom(((unsigned) ngx_pid << 16) ^ tp->sec ^ tp->msec);





    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {
        ls[i].previous = ((void*)0);
    }

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->init_process) {
            if (cycle->modules[i]->init_process(cycle) == NGX_ERROR) {

                exit(2);
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

        if (close(ngx_processes[n].channel[1]) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "close() channel failed");
        }
    }

    if (close(ngx_processes[ngx_process_slot].channel[0]) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close() channel failed");
    }





    if (ngx_add_channel_event(cycle, ngx_channel, NGX_READ_EVENT,
                              ngx_channel_handler)
        == NGX_ERROR)
    {

        exit(2);
    }
}
