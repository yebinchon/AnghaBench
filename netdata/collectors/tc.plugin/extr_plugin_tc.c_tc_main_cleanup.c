
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_static_thread {int enabled; } ;
typedef int (* siginfo_t ) (char*,scalar_t__) ;
typedef int id_t ;


 int NETDATA_MAIN_THREAD_EXITED ;
 int NETDATA_MAIN_THREAD_EXITING ;
 int P_PID ;
 int WEXITED ;
 int info (char*,...) ;
 int killpid (scalar_t__) ;
 scalar_t__ tc_child_pid ;
 int waitid (int ,int ,int (*) (char*,scalar_t__),int ) ;

__attribute__((used)) static void tc_main_cleanup(void *ptr) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)ptr;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;

    info("cleaning up...");

    if(tc_child_pid) {
        info("TC: killing with SIGTERM tc-qos-helper process %d", tc_child_pid);
        if(killpid(tc_child_pid) != -1) {
            siginfo_t info;

            info("TC: waiting for tc plugin child process pid %d to exit...", tc_child_pid);
            waitid(P_PID, (id_t) tc_child_pid, &info, WEXITED);
        }

        tc_child_pid = 0;
    }

    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
