
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugind {int obsolete; scalar_t__ pid; scalar_t__ enabled; } ;
typedef int (* siginfo_t ) (char*,scalar_t__) ;
typedef int id_t ;


 int P_PID ;
 int WEXITED ;
 int info (char*,...) ;
 int killpid (scalar_t__) ;
 int waitid (int ,int ,int (*) (char*,scalar_t__),int ) ;

__attribute__((used)) static void pluginsd_worker_thread_cleanup(void *arg) {
    struct plugind *cd = (struct plugind *)arg;

    if(cd->enabled && !cd->obsolete) {
        cd->obsolete = 1;

        info("data collection thread exiting");

        if (cd->pid) {
            siginfo_t info;
            info("killing child process pid %d", cd->pid);
            if (killpid(cd->pid) != -1) {
                info("waiting for child process pid %d to exit...", cd->pid);
                waitid(P_PID, (id_t) cd->pid, &info, WEXITED);
            }
            cd->pid = 0;
        }
    }
}
