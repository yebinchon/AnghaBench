
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * handle; } ;
typedef TYPE_1__ worker_state ;
typedef int test_shm_mq_header ;
typedef int shm_mq_handle ;
typedef int shm_mq ;
typedef int int64 ;
typedef int int32 ;
typedef int dsm_segment ;


 int PointerGetDatum (TYPE_1__*) ;
 int cancel_on_dsm_detach (int *,int ,int ) ;
 int cleanup_background_workers ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* setup_background_workers (int,int *) ;
 int setup_dynamic_shared_memory (int ,int,int **,int **,int **,int **) ;
 int * shm_mq_attach (int *,int *,int ) ;
 int wait_for_workers_to_become_ready (TYPE_1__*,int *) ;

void
test_shm_mq_setup(int64 queue_size, int32 nworkers, dsm_segment **segp,
      shm_mq_handle **output, shm_mq_handle **input)
{
 dsm_segment *seg;
 test_shm_mq_header *hdr;
 shm_mq *outq = ((void*)0);
 shm_mq *inq = ((void*)0);
 worker_state *wstate;


 setup_dynamic_shared_memory(queue_size, nworkers, &seg, &hdr, &outq, &inq);
 *segp = seg;


 wstate = setup_background_workers(nworkers, seg);


 *output = shm_mq_attach(outq, seg, wstate->handle[0]);
 *input = shm_mq_attach(inq, seg, wstate->handle[nworkers - 1]);


 wait_for_workers_to_become_ready(wstate, hdr);






 cancel_on_dsm_detach(seg, cleanup_background_workers,
       PointerGetDatum(wstate));
 pfree(wstate);
}
