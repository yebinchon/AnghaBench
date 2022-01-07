
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

__attribute__((used)) static XLogRecPtr
XLogGetReplicationSlotMinimumLSN(void)
{
 XLogRecPtr retval;

 SpinLockAcquire(&XLogCtl->info_lck);
 retval = XLogCtl->replicationSlotMinLSN;
 SpinLockRelease(&XLogCtl->info_lck);

 return retval;
}
