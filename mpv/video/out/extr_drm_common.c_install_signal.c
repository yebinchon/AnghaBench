
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;int sa_flags; int sa_mask; int member_0; } ;


 int SA_RESTART ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static int install_signal(int signo, void (*handler)(int))
{
    struct sigaction act = { 0 };
    act.sa_handler = handler;
    sigemptyset(&act.sa_mask);
    act.sa_flags = SA_RESTART;
    return sigaction(signo, &act, ((void*)0));
}
