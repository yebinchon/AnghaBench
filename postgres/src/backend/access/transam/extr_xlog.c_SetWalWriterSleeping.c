
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int WalWriterSleeping; int info_lck; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

void
SetWalWriterSleeping(bool sleeping)
{
 SpinLockAcquire(&XLogCtl->info_lck);
 XLogCtl->WalWriterSleeping = sleeping;
 SpinLockRelease(&XLogCtl->info_lck);
}
