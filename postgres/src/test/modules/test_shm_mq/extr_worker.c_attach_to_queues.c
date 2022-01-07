
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_toc ;
typedef int shm_mq_handle ;
typedef int shm_mq ;
typedef int dsm_segment ;


 int MyProc ;
 int * shm_mq_attach (int *,int *,int *) ;
 int shm_mq_set_receiver (int *,int ) ;
 int shm_mq_set_sender (int *,int ) ;
 int * shm_toc_lookup (int *,int,int) ;

__attribute__((used)) static void
attach_to_queues(dsm_segment *seg, shm_toc *toc, int myworkernumber,
     shm_mq_handle **inqhp, shm_mq_handle **outqhp)
{
 shm_mq *inq;
 shm_mq *outq;

 inq = shm_toc_lookup(toc, myworkernumber, 0);
 shm_mq_set_receiver(inq, MyProc);
 *inqhp = shm_mq_attach(inq, seg, ((void*)0));
 outq = shm_toc_lookup(toc, myworkernumber + 1, 0);
 shm_mq_set_sender(outq, MyProc);
 *outqhp = shm_mq_attach(outq, seg, ((void*)0));
}
