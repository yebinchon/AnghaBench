
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgpid_t ;


 int SIGINT ;
 int SIG_DFL ;
 int _ (char*) ;
 int errno ;
 scalar_t__ kill (int,int ) ;
 int postmasterPID ;
 int pqsignal (int ,int ) ;
 int progname ;
 int raise (int ) ;
 int strerror (int ) ;
 int write_stderr (int ,int ,int ,int ) ;

__attribute__((used)) static void
trap_sigint_during_startup(int sig)
{
 if (postmasterPID != -1)
 {
  if (kill(postmasterPID, SIGINT) != 0)
   write_stderr(_("%s: could not send stop signal (PID: %ld): %s\n"),
       progname, (pgpid_t) postmasterPID, strerror(errno));
 }





 pqsignal(SIGINT, SIG_DFL);
 raise(SIGINT);
}
