
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nworkers_launched; } ;
struct TYPE_4__ {int finished; int * buffer_usage; TYPE_2__* pcxt; int * reader; int * tqueue; } ;
typedef TYPE_1__ ParallelExecutorInfo ;


 int DestroyTupleQueueReader (int ) ;
 int InstrAccumParallelQuery (int *) ;
 int WaitForParallelWorkersToFinish (TYPE_2__*) ;
 int pfree (int *) ;
 int shm_mq_detach (int ) ;

void
ExecParallelFinish(ParallelExecutorInfo *pei)
{
 int nworkers = pei->pcxt->nworkers_launched;
 int i;


 if (pei->finished)
  return;





 if (pei->tqueue != ((void*)0))
 {
  for (i = 0; i < nworkers; i++)
   shm_mq_detach(pei->tqueue[i]);
  pfree(pei->tqueue);
  pei->tqueue = ((void*)0);
 }





 if (pei->reader != ((void*)0))
 {
  for (i = 0; i < nworkers; i++)
   DestroyTupleQueueReader(pei->reader[i]);
  pfree(pei->reader);
  pei->reader = ((void*)0);
 }


 WaitForParallelWorkersToFinish(pei->pcxt);





 for (i = 0; i < nworkers; i++)
  InstrAccumParallelQuery(&pei->buffer_usage[i]);

 pei->finished = 1;
}
