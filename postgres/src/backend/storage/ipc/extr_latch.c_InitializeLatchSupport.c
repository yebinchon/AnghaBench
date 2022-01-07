
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int FATAL ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int F_SETFL ;
 scalar_t__ IsUnderPostmaster ;
 scalar_t__ MyProcPid ;
 int O_NONBLOCK ;
 int close (int) ;
 int elog (int ,char*) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ selfpipe_owner_pid ;
 int selfpipe_readfd ;
 int selfpipe_writefd ;

void
InitializeLatchSupport(void)
{

 int pipefd[2];

 if (IsUnderPostmaster)
 {






  if (selfpipe_owner_pid != 0)
  {

   Assert(selfpipe_owner_pid != MyProcPid);

   (void) close(selfpipe_readfd);
   (void) close(selfpipe_writefd);

   selfpipe_readfd = selfpipe_writefd = -1;
   selfpipe_owner_pid = 0;
  }
  else
  {





   Assert(selfpipe_readfd == -1);
  }
 }
 else
 {

  Assert(selfpipe_readfd == -1);
  Assert(selfpipe_owner_pid == 0);
 }
 if (pipe(pipefd) < 0)
  elog(FATAL, "pipe() failed: %m");
 if (fcntl(pipefd[0], F_SETFL, O_NONBLOCK) == -1)
  elog(FATAL, "fcntl(F_SETFL) failed on read-end of self-pipe: %m");
 if (fcntl(pipefd[1], F_SETFL, O_NONBLOCK) == -1)
  elog(FATAL, "fcntl(F_SETFL) failed on write-end of self-pipe: %m");
 if (fcntl(pipefd[0], F_SETFD, FD_CLOEXEC) == -1)
  elog(FATAL, "fcntl(F_SETFD) failed on read-end of self-pipe: %m");
 if (fcntl(pipefd[1], F_SETFD, FD_CLOEXEC) == -1)
  elog(FATAL, "fcntl(F_SETFD) failed on write-end of self-pipe: %m");

 selfpipe_readfd = pipefd[0];
 selfpipe_writefd = pipefd[1];
 selfpipe_owner_pid = MyProcPid;



}
