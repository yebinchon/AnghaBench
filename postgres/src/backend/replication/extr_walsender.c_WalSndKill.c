
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; scalar_t__ pid; int * latch; } ;
typedef TYPE_1__ WalSnd ;
typedef int Datum ;


 int Assert (int ) ;
 TYPE_1__* MyWalSnd ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static void
WalSndKill(int code, Datum arg)
{
 WalSnd *walsnd = MyWalSnd;

 Assert(walsnd != ((void*)0));

 MyWalSnd = ((void*)0);

 SpinLockAcquire(&walsnd->mutex);

 walsnd->latch = ((void*)0);

 walsnd->pid = 0;
 SpinLockRelease(&walsnd->mutex);
}
