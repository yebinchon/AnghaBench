
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_UNBLOCK ;
 int error (char*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;

void signals_unblock(void) {
    sigset_t sigset;
    sigfillset(&sigset);

    if(pthread_sigmask(SIG_UNBLOCK, &sigset, ((void*)0)) == -1) {
        error("SIGNAL: Could not unblock signals for threads");
    }
}
