
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* shared; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_6__ {int mutex; int currentWorker; } ;
typedef TYPE_2__ Sharedsort ;


 int Assert (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WORKER (TYPE_1__*) ;

__attribute__((used)) static int
worker_get_identifier(Tuplesortstate *state)
{
 Sharedsort *shared = state->shared;
 int worker;

 Assert(WORKER(state));

 SpinLockAcquire(&shared->mutex);
 worker = shared->currentWorker++;
 SpinLockRelease(&shared->mutex);

 return worker;
}
