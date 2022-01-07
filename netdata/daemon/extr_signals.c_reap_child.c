
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_pid; int si_code; int si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;
typedef int id_t ;
 int D_CHILDS ;
 scalar_t__ ECHILD ;
 int P_PID ;
 int WEXITED ;
 int WNOHANG ;
 int debug (int ,char*,scalar_t__,...) ;
 scalar_t__ errno ;
 int error (char*,scalar_t__) ;
 int waitid (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static void reap_child(pid_t pid) {
    siginfo_t i;

    errno = 0;
    debug(D_CHILDS, "SIGNAL: Reaping pid: %d...", pid);
    if (waitid(P_PID, (id_t)pid, &i, WEXITED|WNOHANG) == -1) {
        if (errno != ECHILD)
            error("SIGNAL: Failed to wait for: %d", pid);
        else
            debug(D_CHILDS, "SIGNAL: Already reaped: %d", pid);
        return;
    } else if (i.si_pid == 0) {

        return;
    }

    switch (i.si_code) {
    case 131:
        debug(D_CHILDS, "SIGNAL: Child %d exited: %d", pid, i.si_status);
        break;
    case 130:
        debug(D_CHILDS, "SIGNAL: Child %d killed by signal: %d", pid, i.si_status);
        break;
    case 132:
        debug(D_CHILDS, "SIGNAL: Child %d dumped core by signal: %d", pid, i.si_status);
        break;
    case 129:
        debug(D_CHILDS, "SIGNAL: Child %d stopped by signal: %d", pid, i.si_status);
        break;
    case 128:
        debug(D_CHILDS, "SIGNAL: Child %d trapped by signal: %d", pid, i.si_status);
        break;
    case 133:
        debug(D_CHILDS, "SIGNAL: Child %d continued by signal: %d", pid, i.si_status);
        break;
    default:
        debug(D_CHILDS, "SIGNAL: Child %d gave us a SIGCHLD with code %d and status %d.", pid, i.si_code, i.si_status);
    }
}
