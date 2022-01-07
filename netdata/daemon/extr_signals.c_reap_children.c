
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_pid; } ;
typedef TYPE_1__ siginfo_t ;
typedef int id_t ;


 scalar_t__ ECHILD ;
 int P_ALL ;
 int WEXITED ;
 int WNOHANG ;
 int WNOWAIT ;
 scalar_t__ errno ;
 int error (char*) ;
 scalar_t__ myp_reap (scalar_t__) ;
 int reap_child (scalar_t__) ;
 int usleep (int) ;
 int waitid (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static void reap_children() {
    siginfo_t i;

    while (1 == 1) {


        i.si_pid = 0;
        if (waitid(P_ALL, (id_t)0, &i, WEXITED|WNOHANG|WNOWAIT) == -1) {
            if (errno != ECHILD)
                error("SIGNAL: Failed to wait");
            return;
        } else if (i.si_pid == 0) {

            return;
        } else if (myp_reap(i.si_pid) == 0) {


            usleep(10000);
        } else {

            reap_child(i.si_pid);
        }
    }
}
