
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int error (char*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;

void signals_block(void) {
    sigset_t sigset;
    sigfillset(&sigset);

    if(pthread_sigmask(SIG_BLOCK, &sigset, ((void*)0)) == -1)
        error("SIGNAL: Could not block signals for threads");
}
