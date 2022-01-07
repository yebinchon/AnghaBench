
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleQueueReader ;
struct TYPE_7__ {int * tqueue; int ** reader; TYPE_2__* pcxt; } ;
struct TYPE_6__ {int nworkers_launched; TYPE_1__* worker; } ;
struct TYPE_5__ {int bgwhandle; } ;
typedef TYPE_3__ ParallelExecutorInfo ;


 int Assert (int ) ;
 int * CreateTupleQueueReader (int ) ;
 scalar_t__ palloc (int) ;
 int shm_mq_set_handle (int ,int ) ;

void
ExecParallelCreateReaders(ParallelExecutorInfo *pei)
{
 int nworkers = pei->pcxt->nworkers_launched;
 int i;

 Assert(pei->reader == ((void*)0));

 if (nworkers > 0)
 {
  pei->reader = (TupleQueueReader **)
   palloc(nworkers * sizeof(TupleQueueReader *));

  for (i = 0; i < nworkers; i++)
  {
   shm_mq_set_handle(pei->tqueue[i],
         pei->pcxt->worker[i].bgwhandle);
   pei->reader[i] = CreateTupleQueueReader(pei->tqueue[i]);
  }
 }
}
