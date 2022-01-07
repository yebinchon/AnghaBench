
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {scalar_t__ sa_flags; int sa_handler; int sa_mask; } ;
struct TYPE_2__ {scalar_t__ action; int name; int signo; } ;


 scalar_t__ NETDATA_SIGNAL_END_OF_LIST ;
 int SIG_DFL ;
 int error (char*,int ) ;
 int myp_free () ;
 int reaper_enabled ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 TYPE_1__* signals_waiting ;

void signals_reset(void) {
    struct sigaction sa;
    sigemptyset(&sa.sa_mask);
    sa.sa_handler = SIG_DFL;
    sa.sa_flags = 0;

    int i;
    for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
        if(sigaction(signals_waiting[i].signo, &sa, ((void*)0)) == -1)
            error("SIGNAL: Failed to reset signal handler for: %s", signals_waiting[i].name);
    }

    if (reaper_enabled == 1)
        myp_free();
}
