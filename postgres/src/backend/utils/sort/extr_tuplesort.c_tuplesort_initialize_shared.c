
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_5__ {int nTapes; TYPE_1__* tapes; int fileset; scalar_t__ workersFinished; scalar_t__ currentWorker; int mutex; } ;
struct TYPE_4__ {long firstblocknumber; } ;
typedef TYPE_2__ Sharedsort ;


 int Assert (int) ;
 int SharedFileSetInit (int *,int *) ;
 int SpinLockInit (int *) ;

void
tuplesort_initialize_shared(Sharedsort *shared, int nWorkers, dsm_segment *seg)
{
 int i;

 Assert(nWorkers > 0);

 SpinLockInit(&shared->mutex);
 shared->currentWorker = 0;
 shared->workersFinished = 0;
 SharedFileSetInit(&shared->fileset, seg);
 shared->nTapes = nWorkers;
 for (i = 0; i < nWorkers; i++)
 {
  shared->tapes[i].firstblocknumber = 0L;
 }
}
