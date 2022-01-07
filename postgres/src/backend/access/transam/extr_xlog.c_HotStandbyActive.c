
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SharedHotStandbyActive; int info_lck; } ;


 int LocalHotStandbyActive ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

bool
HotStandbyActive(void)
{





 if (LocalHotStandbyActive)
  return 1;
 else
 {

  SpinLockAcquire(&XLogCtl->info_lck);
  LocalHotStandbyActive = XLogCtl->SharedHotStandbyActive;
  SpinLockRelease(&XLogCtl->info_lck);

  return LocalHotStandbyActive;
 }
}
