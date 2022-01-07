
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int participants; int mutex; } ;
typedef TYPE_1__ Barrier ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

int
BarrierParticipants(Barrier *barrier)
{
 int participants;

 SpinLockAcquire(&barrier->mutex);
 participants = barrier->participants;
 SpinLockRelease(&barrier->mutex);

 return participants;
}
