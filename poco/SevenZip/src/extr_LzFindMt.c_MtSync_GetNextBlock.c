
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numProcessedBlocks; void* csWasEntered; int cs; int filledSemaphore; int freeSemaphore; int wasStarted; int canStart; int wasStopped; void* exit; void* stopWriting; void* needStart; } ;
typedef TYPE_1__ CMtSync ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 int Event_Reset (int *) ;
 int Event_Set (int *) ;
 int Event_Wait (int *) ;
 void* False ;
 int Semaphore_Release1 (int *) ;
 int Semaphore_Wait (int *) ;
 void* True ;

void MtSync_GetNextBlock(CMtSync *p)
{
  if (p->needStart)
  {
    p->numProcessedBlocks = 1;
    p->needStart = False;
    p->stopWriting = False;
    p->exit = False;
    Event_Reset(&p->wasStarted);
    Event_Reset(&p->wasStopped);

    Event_Set(&p->canStart);
    Event_Wait(&p->wasStarted);
  }
  else
  {
    CriticalSection_Leave(&p->cs);
    p->csWasEntered = False;
    p->numProcessedBlocks++;
    Semaphore_Release1(&p->freeSemaphore);
  }
  Semaphore_Wait(&p->filledSemaphore);
  CriticalSection_Enter(&p->cs);
  p->csWasEntered = True;
}
