
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_toc ;
typedef int shm_mq ;
typedef int dsm_segment ;
typedef int DestReceiver ;


 int * CreateTupleQueueDestReceiver (int ) ;
 int MyProc ;
 int PARALLEL_KEY_TUPLE_QUEUE ;
 int PARALLEL_TUPLE_QUEUE_SIZE ;
 int ParallelWorkerNumber ;
 int shm_mq_attach (int *,int *,int *) ;
 int shm_mq_set_sender (int *,int ) ;
 char* shm_toc_lookup (int *,int ,int) ;

__attribute__((used)) static DestReceiver *
ExecParallelGetReceiver(dsm_segment *seg, shm_toc *toc)
{
 char *mqspace;
 shm_mq *mq;

 mqspace = shm_toc_lookup(toc, PARALLEL_KEY_TUPLE_QUEUE, 0);
 mqspace += ParallelWorkerNumber * PARALLEL_TUPLE_QUEUE_SIZE;
 mq = (shm_mq *) mqspace;
 shm_mq_set_sender(mq, MyProc);
 return CreateTupleQueueDestReceiver(shm_mq_attach(mq, seg, ((void*)0)));
}
