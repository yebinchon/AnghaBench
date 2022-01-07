
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int shm_mq_handle ;
typedef int shm_mq ;
struct TYPE_3__ {int nworkers; int toc; int seg; } ;
typedef int Size ;
typedef TYPE_1__ ParallelContext ;


 int MyProc ;
 int PARALLEL_KEY_TUPLE_QUEUE ;
 int PARALLEL_TUPLE_QUEUE_SIZE ;
 int mul_size (int,int) ;
 scalar_t__ palloc (int) ;
 int * shm_mq_attach (int *,int ,int *) ;
 int * shm_mq_create (char*,int) ;
 int shm_mq_set_receiver (int *,int ) ;
 char* shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,char*) ;
 char* shm_toc_lookup (int ,int ,int) ;

__attribute__((used)) static shm_mq_handle **
ExecParallelSetupTupleQueues(ParallelContext *pcxt, bool reinitialize)
{
 shm_mq_handle **responseq;
 char *tqueuespace;
 int i;


 if (pcxt->nworkers == 0)
  return ((void*)0);


 responseq = (shm_mq_handle **)
  palloc(pcxt->nworkers * sizeof(shm_mq_handle *));





 if (!reinitialize)
  tqueuespace =
   shm_toc_allocate(pcxt->toc,
        mul_size(PARALLEL_TUPLE_QUEUE_SIZE,
           pcxt->nworkers));
 else
  tqueuespace = shm_toc_lookup(pcxt->toc, PARALLEL_KEY_TUPLE_QUEUE, 0);


 for (i = 0; i < pcxt->nworkers; ++i)
 {
  shm_mq *mq;

  mq = shm_mq_create(tqueuespace +
         ((Size) i) * PARALLEL_TUPLE_QUEUE_SIZE,
         (Size) PARALLEL_TUPLE_QUEUE_SIZE);

  shm_mq_set_receiver(mq, MyProc);
  responseq[i] = shm_mq_attach(mq, pcxt->seg, ((void*)0));
 }


 if (!reinitialize)
  shm_toc_insert(pcxt->toc, PARALLEL_KEY_TUPLE_QUEUE, tqueuespace);


 return responseq;
}
