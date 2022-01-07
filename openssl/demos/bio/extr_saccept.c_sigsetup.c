
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; int sa_flags; } ;


 int SA_RESETHAND ;
 int SIGINT ;
 int interrupt ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

void sigsetup(void)
{
    struct sigaction sa;




    sa.sa_flags = SA_RESETHAND;
    sa.sa_handler = interrupt;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGINT, &sa, ((void*)0));
}
