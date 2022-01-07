
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_12__ {int workers_total; scalar_t__ workers_ready; scalar_t__ workers_attached; int mutex; } ;
typedef TYPE_1__ test_shm_mq_header ;
typedef int shm_toc_estimator ;
typedef int shm_toc ;
typedef TYPE_1__ shm_mq ;
typedef scalar_t__ int64 ;
typedef int dsm_segment ;
typedef scalar_t__ Size ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int MyProc ;
 int PG_TEST_SHM_MQ_MAGIC ;
 int SpinLockInit (int *) ;
 int * dsm_create (scalar_t__,int ) ;
 int dsm_segment_address (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_1__* shm_mq_create (TYPE_1__*,scalar_t__) ;
 scalar_t__ shm_mq_minimum_size ;
 int shm_mq_set_receiver (TYPE_1__*,int ) ;
 int shm_mq_set_sender (TYPE_1__*,int ) ;
 TYPE_1__* shm_toc_allocate (int *,scalar_t__) ;
 int * shm_toc_create (int ,int ,scalar_t__) ;
 scalar_t__ shm_toc_estimate (int *) ;
 int shm_toc_estimate_chunk (int *,scalar_t__) ;
 int shm_toc_estimate_keys (int *,int) ;
 int shm_toc_initialize_estimator (int *) ;
 int shm_toc_insert (int *,int,TYPE_1__*) ;

__attribute__((used)) static void
setup_dynamic_shared_memory(int64 queue_size, int nworkers,
       dsm_segment **segp, test_shm_mq_header **hdrp,
       shm_mq **outp, shm_mq **inp)
{
 shm_toc_estimator e;
 int i;
 Size segsize;
 dsm_segment *seg;
 shm_toc *toc;
 test_shm_mq_header *hdr;


 if (queue_size < 0 || ((uint64) queue_size) < shm_mq_minimum_size)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("queue size must be at least %zu bytes",
      shm_mq_minimum_size)));
 if (queue_size != ((Size) queue_size))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("queue size overflows size_t")));
 shm_toc_initialize_estimator(&e);
 shm_toc_estimate_chunk(&e, sizeof(test_shm_mq_header));
 for (i = 0; i <= nworkers; ++i)
  shm_toc_estimate_chunk(&e, (Size) queue_size);
 shm_toc_estimate_keys(&e, 2 + nworkers);
 segsize = shm_toc_estimate(&e);


 seg = dsm_create(shm_toc_estimate(&e), 0);
 toc = shm_toc_create(PG_TEST_SHM_MQ_MAGIC, dsm_segment_address(seg),
       segsize);


 hdr = shm_toc_allocate(toc, sizeof(test_shm_mq_header));
 SpinLockInit(&hdr->mutex);
 hdr->workers_total = nworkers;
 hdr->workers_attached = 0;
 hdr->workers_ready = 0;
 shm_toc_insert(toc, 0, hdr);


 for (i = 0; i <= nworkers; ++i)
 {
  shm_mq *mq;

  mq = shm_mq_create(shm_toc_allocate(toc, (Size) queue_size),
         (Size) queue_size);
  shm_toc_insert(toc, i + 1, mq);

  if (i == 0)
  {

   shm_mq_set_sender(mq, MyProc);
   *outp = mq;
  }
  if (i == nworkers)
  {

   shm_mq_set_receiver(mq, MyProc);
   *inp = mq;
  }
 }


 *segp = seg;
 *hdrp = hdr;
}
