
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phase; int mutex; int participants; int static_party; } ;
typedef TYPE_1__ Barrier ;


 int Assert (int) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

int
BarrierAttach(Barrier *barrier)
{
 int phase;

 Assert(!barrier->static_party);

 SpinLockAcquire(&barrier->mutex);
 ++barrier->participants;
 phase = barrier->phase;
 SpinLockRelease(&barrier->mutex);

 return phase;
}
