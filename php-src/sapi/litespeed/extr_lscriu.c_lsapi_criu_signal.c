
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef scalar_t__ sighandler_t ;


 scalar_t__ SIG_DFL ;
 int sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void lsapi_criu_signal(int signo, sighandler_t handler)
{
    struct sigaction sa;

    sigaction(signo, ((void*)0), &sa);

    if (sa.sa_handler == SIG_DFL) {
        sigemptyset(&sa.sa_mask);
        sa.sa_flags = 0;
        sa.sa_handler = handler;
        sigaction(signo, &sa, ((void*)0));
    }
}
