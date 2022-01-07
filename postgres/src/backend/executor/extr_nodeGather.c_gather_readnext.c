
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleQueueReader ;
struct TYPE_4__ {size_t nextreader; size_t nreaders; scalar_t__ need_to_scan_locally; int ** reader; } ;
typedef int * HeapTuple ;
typedef TYPE_1__ GatherState ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecShutdownGatherWorkers (TYPE_1__*) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int * TupleQueueReaderNext (int *,int,int*) ;
 int WAIT_EVENT_EXECUTE_GATHER ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 int memmove (int **,int **,int) ;

__attribute__((used)) static HeapTuple
gather_readnext(GatherState *gatherstate)
{
 int nvisited = 0;

 for (;;)
 {
  TupleQueueReader *reader;
  HeapTuple tup;
  bool readerdone;


  CHECK_FOR_INTERRUPTS();
  Assert(gatherstate->nextreader < gatherstate->nreaders);
  reader = gatherstate->reader[gatherstate->nextreader];
  tup = TupleQueueReaderNext(reader, 1, &readerdone);





  if (readerdone)
  {
   Assert(!tup);
   --gatherstate->nreaders;
   if (gatherstate->nreaders == 0)
   {
    ExecShutdownGatherWorkers(gatherstate);
    return ((void*)0);
   }
   memmove(&gatherstate->reader[gatherstate->nextreader],
     &gatherstate->reader[gatherstate->nextreader + 1],
     sizeof(TupleQueueReader *)
     * (gatherstate->nreaders - gatherstate->nextreader));
   if (gatherstate->nextreader >= gatherstate->nreaders)
    gatherstate->nextreader = 0;
   continue;
  }


  if (tup)
   return tup;
  gatherstate->nextreader++;
  if (gatherstate->nextreader >= gatherstate->nreaders)
   gatherstate->nextreader = 0;


  nvisited++;
  if (nvisited >= gatherstate->nreaders)
  {




   if (gatherstate->need_to_scan_locally)
    return ((void*)0);


   (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
        WAIT_EVENT_EXECUTE_GATHER);
   ResetLatch(MyLatch);
   nvisited = 0;
  }
 }
}
