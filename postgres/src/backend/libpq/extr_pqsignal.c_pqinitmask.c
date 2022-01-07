
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BlockSig ;
 int SIGABRT ;
 int SIGALRM ;
 int SIGBUS ;
 int SIGCONT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGSYS ;
 int SIGTERM ;
 int SIGTRAP ;
 int StartupBlockSig ;
 int UnBlockSig ;
 int sigdelset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;

void
pqinitmask(void)
{
 sigemptyset(&UnBlockSig);


 sigfillset(&BlockSig);
 sigfillset(&StartupBlockSig);
}
