
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NX509_SIG ;
 size_t SIGABRT ;
 size_t SIGFPE ;
 size_t SIGILL ;
 size_t SIGINT ;
 size_t SIGSEGV ;
 size_t SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int * savsig ;
 int sigaction (int,int *,int *) ;
 int signal (int,int ) ;

__attribute__((used)) static void popsig(void)
{
    int i;
    for (i = 1; i < NX509_SIG; i++) {
        signal(i, savsig[i]);

    }

}
