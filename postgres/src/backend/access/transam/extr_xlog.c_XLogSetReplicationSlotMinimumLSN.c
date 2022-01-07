
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_2__ {int info_lck; int replicationSlotMinLSN; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

void
XLogSetReplicationSlotMinimumLSN(XLogRecPtr lsn)
{
 SpinLockAcquire(&XLogCtl->info_lck);
 XLogCtl->replicationSlotMinLSN = lsn;
 SpinLockRelease(&XLogCtl->info_lck);
}
