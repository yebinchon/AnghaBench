
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ pgpid_t ;


 int _ (char*) ;
 int errno ;
 int exit (int) ;
 scalar_t__ kill (int ,int ) ;
 int progname ;
 int sig ;
 int strerror (int ) ;
 int write_stderr (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
do_kill(pgpid_t pid)
{
 if (kill((pid_t) pid, sig) != 0)
 {
  write_stderr(_("%s: could not send signal %d (PID: %ld): %s\n"),
      progname, sig, pid, strerror(errno));
  exit(1);
 }
}
