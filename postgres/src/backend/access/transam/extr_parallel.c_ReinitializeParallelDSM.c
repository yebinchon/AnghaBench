
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int shm_mq ;
struct TYPE_9__ {scalar_t__ last_xlog_end; } ;
struct TYPE_8__ {scalar_t__ nworkers_launched; scalar_t__ nworkers; int seg; TYPE_1__* worker; int toc; scalar_t__ nknown_attached_workers; int * known_attached_workers; } ;
struct TYPE_7__ {int error_mqh; } ;
typedef TYPE_2__ ParallelContext ;
typedef TYPE_3__ FixedParallelState ;


 int MyProc ;
 int PARALLEL_ERROR_QUEUE_SIZE ;
 int PARALLEL_KEY_ERROR_QUEUE ;
 int PARALLEL_KEY_FIXED ;
 int WaitForParallelWorkersToExit (TYPE_2__*) ;
 int WaitForParallelWorkersToFinish (TYPE_2__*) ;
 int pfree (int *) ;
 int shm_mq_attach (int *,int ,int *) ;
 int * shm_mq_create (char*,int) ;
 int shm_mq_set_receiver (int *,int ) ;
 void* shm_toc_lookup (int ,int ,int) ;

void
ReinitializeParallelDSM(ParallelContext *pcxt)
{
 FixedParallelState *fps;


 if (pcxt->nworkers_launched > 0)
 {
  WaitForParallelWorkersToFinish(pcxt);
  WaitForParallelWorkersToExit(pcxt);
  pcxt->nworkers_launched = 0;
  if (pcxt->known_attached_workers)
  {
   pfree(pcxt->known_attached_workers);
   pcxt->known_attached_workers = ((void*)0);
   pcxt->nknown_attached_workers = 0;
  }
 }


 fps = shm_toc_lookup(pcxt->toc, PARALLEL_KEY_FIXED, 0);
 fps->last_xlog_end = 0;


 if (pcxt->nworkers > 0)
 {
  char *error_queue_space;
  int i;

  error_queue_space =
   shm_toc_lookup(pcxt->toc, PARALLEL_KEY_ERROR_QUEUE, 0);
  for (i = 0; i < pcxt->nworkers; ++i)
  {
   char *start;
   shm_mq *mq;

   start = error_queue_space + i * PARALLEL_ERROR_QUEUE_SIZE;
   mq = shm_mq_create(start, PARALLEL_ERROR_QUEUE_SIZE);
   shm_mq_set_receiver(mq, MyProc);
   pcxt->worker[i].error_mqh = shm_mq_attach(mq, pcxt->seg, ((void*)0));
  }
 }
}
