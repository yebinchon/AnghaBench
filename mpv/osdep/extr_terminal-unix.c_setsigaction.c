
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;int sa_flags; int sa_mask; } ;


 int SA_RESTART ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;

__attribute__((used)) static int setsigaction(int signo, void (*handler) (int),
                        int flags, bool do_mask)
{
    struct sigaction sa;
    sa.sa_handler = handler;

    if(do_mask)
        sigfillset(&sa.sa_mask);
    else
        sigemptyset(&sa.sa_mask);

    sa.sa_flags = flags | SA_RESTART;
    return sigaction(signo, &sa, ((void*)0));
}
