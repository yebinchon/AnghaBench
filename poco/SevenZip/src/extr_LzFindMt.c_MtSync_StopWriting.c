
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_3__ {scalar_t__ numProcessedBlocks; void* needStart; int freeSemaphore; int filledSemaphore; int wasStopped; scalar_t__ csWasEntered; int cs; void* stopWriting; int thread; } ;
typedef TYPE_1__ CMtSync ;


 int CriticalSection_Leave (int *) ;
 int Event_Wait (int *) ;
 scalar_t__ False ;
 int Semaphore_Release1 (int *) ;
 int Semaphore_Wait (int *) ;
 int Thread_WasCreated (int *) ;
 void* True ;

void MtSync_StopWriting(CMtSync *p)
{
  UInt32 myNumBlocks = p->numProcessedBlocks;
  if (!Thread_WasCreated(&p->thread) || p->needStart)
    return;
  p->stopWriting = True;
  if (p->csWasEntered)
  {
    CriticalSection_Leave(&p->cs);
    p->csWasEntered = False;
  }
  Semaphore_Release1(&p->freeSemaphore);

  Event_Wait(&p->wasStopped);

  while (myNumBlocks++ != p->numProcessedBlocks)
  {
    Semaphore_Wait(&p->filledSemaphore);
    Semaphore_Release1(&p->freeSemaphore);
  }
  p->needStart = True;
}
