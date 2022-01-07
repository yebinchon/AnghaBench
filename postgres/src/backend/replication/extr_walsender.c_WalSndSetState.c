
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WalSndState ;
struct TYPE_3__ {scalar_t__ state; int mutex; } ;
typedef TYPE_1__ WalSnd ;


 int Assert (int ) ;
 TYPE_1__* MyWalSnd ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int am_walsender ;

void
WalSndSetState(WalSndState state)
{
 WalSnd *walsnd = MyWalSnd;

 Assert(am_walsender);

 if (walsnd->state == state)
  return;

 SpinLockAcquire(&walsnd->mutex);
 walsnd->state = state;
 SpinLockRelease(&walsnd->mutex);
}
