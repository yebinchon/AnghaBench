
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;
struct TYPE_5__ {int numWorkers; TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {scalar_t__ workerStatus; int pipeRead; } ;
typedef TYPE_2__ ParallelState ;


 int Assert (int) ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ WRKR_TERMINATED ;
 int fatal (char*) ;
 char* readMessageFromPipe (int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int select_loop (int,int *) ;

__attribute__((used)) static char *
getMessageFromWorker(ParallelState *pstate, bool do_wait, int *worker)
{
 int i;
 fd_set workerset;
 int maxFd = -1;
 struct timeval nowait = {0, 0};


 FD_ZERO(&workerset);
 for (i = 0; i < pstate->numWorkers; i++)
 {
  if (pstate->parallelSlot[i].workerStatus == WRKR_TERMINATED)
   continue;
  FD_SET(pstate->parallelSlot[i].pipeRead, &workerset);
  if (pstate->parallelSlot[i].pipeRead > maxFd)
   maxFd = pstate->parallelSlot[i].pipeRead;
 }

 if (do_wait)
 {
  i = select_loop(maxFd, &workerset);
  Assert(i != 0);
 }
 else
 {
  if ((i = select(maxFd + 1, &workerset, ((void*)0), ((void*)0), &nowait)) == 0)
   return ((void*)0);
 }

 if (i < 0)
  fatal("select() failed: %m");

 for (i = 0; i < pstate->numWorkers; i++)
 {
  char *msg;

  if (!FD_ISSET(pstate->parallelSlot[i].pipeRead, &workerset))
   continue;
  msg = readMessageFromPipe(pstate->parallelSlot[i].pipeRead);
  *worker = i;
  return msg;
 }
 Assert(0);
 return ((void*)0);
}
