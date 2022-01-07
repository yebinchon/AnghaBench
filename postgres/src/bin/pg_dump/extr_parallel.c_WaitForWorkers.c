
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFW_WaitOption ;
typedef int ParallelState ;
typedef int ArchiveHandle ;


 int Assert (int) ;
 int GetIdleWorker (int *) ;
 scalar_t__ IsEveryWorkerIdle (int *) ;
 scalar_t__ ListenToWorkers (int *,int *,int) ;
 int NO_SLOT ;





void
WaitForWorkers(ArchiveHandle *AH, ParallelState *pstate, WFW_WaitOption mode)
{
 bool do_wait = 0;






 if (mode == 130)
 {

  Assert(!IsEveryWorkerIdle(pstate));
  do_wait = 1;
 }

 for (;;)
 {





  if (ListenToWorkers(AH, pstate, do_wait))
  {





   if (mode != 131)
    return;
  }


  switch (mode)
  {
   case 129:
    return;
   case 130:
    Assert(0);
    break;
   case 128:
    if (GetIdleWorker(pstate) != NO_SLOT)
     return;
    break;
   case 131:
    if (IsEveryWorkerIdle(pstate))
     return;
    break;
  }


  do_wait = 1;
 }
}
