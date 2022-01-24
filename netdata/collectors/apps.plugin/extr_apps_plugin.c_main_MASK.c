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
typedef  int usec_t ;
typedef  char* uid_t ;
typedef  int time_t ;
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct pid_stat {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  heartbeat_t ;
struct TYPE_4__ {int filename; } ;
struct TYPE_3__ {int filename; } ;

/* Variables and functions */
 int /*<<< orphan*/ * CONFIG_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/ * LIBCONFIG_DIR ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PR_SET_DUMPABLE ; 
 unsigned long long RATES_DETAIL ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 TYPE_2__ all_group_ids ; 
 void* all_pids ; 
 void* all_pids_sortlist ; 
 TYPE_1__ all_user_ids ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  apps_groups_root_target ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ debug_flags ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  enable_groups_charts ; 
 int /*<<< orphan*/  enable_users_charts ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int error_log_errors_per_period ; 
 scalar_t__ error_log_syslog ; 
 int error_log_throttle_period ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* FUNC13 (char*) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 () ; 
 int global_iterations_counter ; 
 int /*<<< orphan*/  groups_root_target ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 void* netdata_configured_host_prefix ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 () ; 
 size_t pagesize ; 
 int /*<<< orphan*/  FUNC23 (int,char**) ; 
 scalar_t__ pid_max ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int procfile_adaptive_initial_allocation ; 
 int procfile_open_flags ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  show_guest_time ; 
 int /*<<< orphan*/  show_guest_time_old ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * stock_config_dir ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 unsigned long long system_hz ; 
 unsigned long long time_factor ; 
 scalar_t__ FUNC32 (int) ; 
 int update_every ; 
 int /*<<< orphan*/ * user_config_dir ; 
 int /*<<< orphan*/  users_root_target ; 
 int FUNC33 () ; 

int FUNC34(int argc, char **argv) {
    // debug_flags = D_PROCFILE;

    pagesize = (size_t)FUNC31(_SC_PAGESIZE);

    // set the name for logging
    program_name = "apps.plugin";

    // disable syslog for apps.plugin
    error_log_syslog = 0;

    // set errors flood protection to 100 logs per hour
    error_log_errors_per_period = 100;
    error_log_throttle_period = 3600;

    // since apps.plugin runs as root, prevent it from opening symbolic links
    procfile_open_flags = O_RDONLY|O_NOFOLLOW;

    netdata_configured_host_prefix = FUNC13("NETDATA_HOST_PREFIX");
    if(FUNC33() == -1) FUNC8(1);

    user_config_dir = FUNC13("NETDATA_USER_CONFIG_DIR");
    if(user_config_dir == NULL) {
        // info("NETDATA_CONFIG_DIR is not passed from netdata");
        user_config_dir = CONFIG_DIR;
    }
    // else info("Found NETDATA_USER_CONFIG_DIR='%s'", user_config_dir);

    stock_config_dir = FUNC13("NETDATA_STOCK_CONFIG_DIR");
    if(stock_config_dir == NULL) {
        // info("NETDATA_CONFIG_DIR is not passed from netdata");
        stock_config_dir = LIBCONFIG_DIR;
    }
    // else info("Found NETDATA_USER_CONFIG_DIR='%s'", user_config_dir);

#ifdef NETDATA_INTERNAL_CHECKS
    if(debug_flags != 0) {
        struct rlimit rl = { RLIM_INFINITY, RLIM_INFINITY };
        if(setrlimit(RLIMIT_CORE, &rl) != 0)
            info("Cannot request unlimited core dumps for debugging... Proceeding anyway...");
#ifdef HAVE_SYS_PRCTL_H
        prctl(PR_SET_DUMPABLE, 1, 0, 0, 0);
#endif
    }
#endif /* NETDATA_INTERNAL_CHECKS */

    procfile_adaptive_initial_allocation = 1;

    time_t started_t = FUNC22();

    FUNC10();
#ifdef __FreeBSD__
    time_factor = 1000000ULL / RATES_DETAIL; // FreeBSD uses usecs
#else
    time_factor = system_hz; // Linux uses clock ticks
#endif

    FUNC12();
    FUNC11();

    FUNC23(argc, argv);

    if(!FUNC3() && !FUNC0() && !FUNC4()) {
        uid_t uid = FUNC16(), euid = FUNC14();
#ifdef HAVE_CAPABILITY
        error("apps.plugin should either run as root (now running with uid %u, euid %u) or have special capabilities. "
                      "Without these, apps.plugin cannot report disk I/O utilization of other processes. "
                      "To enable capabilities run: sudo setcap cap_dac_read_search,cap_sys_ptrace+ep %s; "
                      "To enable setuid to root run: sudo chown root:netdata %s; sudo chmod 4750 %s; "
              , uid, euid, argv[0], argv[0], argv[0]
        );
#else
        FUNC7("apps.plugin should either run as root (now running with uid %u, euid %u) or have special capabilities. "
                      "Without these, apps.plugin cannot report disk I/O utilization of other processes. "
                      "Your system does not support capabilities. "
                      "To enable setuid to root run: sudo chown root:netdata %s; sudo chmod 4750 %s; "
              , uid, euid, argv[0], argv[0]
        );
#endif
    }

    FUNC19("started on pid %d", FUNC15());

    FUNC30(all_user_ids.filename, FILENAME_MAX, "%s/etc/passwd", netdata_configured_host_prefix);
    FUNC6("passwd file: '%s'", all_user_ids.filename);

    FUNC30(all_group_ids.filename, FILENAME_MAX, "%s/etc/group", netdata_configured_host_prefix);
    FUNC6("group file: '%s'", all_group_ids.filename);

#if (ALL_PIDS_ARE_READ_INSTANTLY == 0)
    all_pids_sortlist = FUNC2(sizeof(pid_t), (size_t)pid_max);
#endif

    all_pids          = FUNC2(sizeof(struct pid_stat *), (size_t) pid_max);

    usec_t step = update_every * USEC_PER_SEC;
    global_iterations_counter = 1;
    heartbeat_t hb;
    FUNC17(&hb);
    for(;1; global_iterations_counter++) {

#ifdef NETDATA_PROFILING
#warning "compiling for profiling"
        static int profiling_count=0;
        profiling_count++;
        if(unlikely(profiling_count > 2000)) exit(0);
        usec_t dt = update_every * USEC_PER_SEC;
#else
        usec_t dt = FUNC18(&hb, step);
#endif

        if(!FUNC5()) {
            FUNC7("Cannot collect /proc data for running processes. Disabling apps.plugin...");
            FUNC25("DISABLE\n");
            FUNC8(1);
        }

        FUNC1();
        FUNC21(apps_groups_root_target);

        FUNC28(dt);

        // this is smart enough to show only newly added apps, when needed
        FUNC26(apps_groups_root_target, "apps", "Apps");

        if(FUNC20(enable_users_charts))
            FUNC26(users_root_target, "users", "Users");

        if(FUNC20(enable_groups_charts))
            FUNC26(groups_root_target, "groups", "User Groups");

        FUNC27(apps_groups_root_target, "apps", dt);

        if(FUNC20(enable_users_charts))
            FUNC27(users_root_target, "users", dt);

        if(FUNC20(enable_groups_charts))
            FUNC27(groups_root_target, "groups", dt);

        FUNC9(stdout);

        show_guest_time_old = show_guest_time;

        FUNC6("done Loop No %zu", global_iterations_counter);

        // restart check (14400 seconds)
        if(FUNC22() - started_t > 14400) FUNC8(0);
    }
}