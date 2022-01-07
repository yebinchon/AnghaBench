
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_5__ {int filledSemaphore; int freeSemaphore; int wasStopped; scalar_t__ numProcessedBlocks; scalar_t__ stopWriting; scalar_t__ exit; int wasStarted; int canStart; } ;
struct TYPE_6__ {int hashSync; TYPE_1__ btSync; } ;
typedef TYPE_1__ CMtSync ;
typedef TYPE_2__ CMatchFinderMt ;


 int BtFillBlock (TYPE_2__*,int ) ;
 int Event_Set (int *) ;
 int Event_Wait (int *) ;
 int MtSync_StopWriting (int *) ;
 int Semaphore_Release1 (int *) ;
 int Semaphore_Wait (int *) ;

void BtThreadFunc(CMatchFinderMt *mt)
{
  CMtSync *p = &mt->btSync;
  for (;;)
  {
    UInt32 blockIndex = 0;
    Event_Wait(&p->canStart);
    Event_Set(&p->wasStarted);
    for (;;)
    {
      if (p->exit)
        return;
      if (p->stopWriting)
      {
        p->numProcessedBlocks = blockIndex;
        MtSync_StopWriting(&mt->hashSync);
        Event_Set(&p->wasStopped);
        break;
      }
      Semaphore_Wait(&p->freeSemaphore);
      BtFillBlock(mt, blockIndex++);
      Semaphore_Release1(&p->filledSemaphore);
    }
  }
}
