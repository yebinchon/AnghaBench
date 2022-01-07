
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_handler; int sa_mask; scalar_t__ sa_flags; } ;
struct TYPE_2__ {int action; int name; int signo; } ;



 int NETDATA_SIGNAL_END_OF_LIST ;

 int SIG_IGN ;
 int error (char*,int ) ;
 int getpid () ;
 int info (char*) ;
 int myp_init () ;
 int reaper_enabled ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int signal_handler ;
 TYPE_1__* signals_waiting ;

void signals_init(void) {

    struct sigaction sa;
    sa.sa_flags = 0;



    if (getpid() == 1) {
        info("SIGNAL: Enabling reaper");
        myp_init();
        reaper_enabled = 1;
    } else {
        info("SIGNAL: Not enabling reaper");
    }


    sigfillset(&sa.sa_mask);

    int i;
    for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
        switch (signals_waiting[i].action) {
        case 128:
            sa.sa_handler = SIG_IGN;
            break;
        case 129:
            if (reaper_enabled == 0)
                continue;

        default:
            sa.sa_handler = signal_handler;
            break;
        }

        if(sigaction(signals_waiting[i].signo, &sa, ((void*)0)) == -1)
            error("SIGNAL: Failed to change signal handler for: %s", signals_waiting[i].name);
    }
}
