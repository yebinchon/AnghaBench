
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_2__ {void* replication_slot_catalog_xmin; void* replication_slot_xmin; } ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 scalar_t__ LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 TYPE_1__* procArray ;

void
ProcArraySetReplicationSlotXmin(TransactionId xmin, TransactionId catalog_xmin,
        bool already_locked)
{
 Assert(!already_locked || LWLockHeldByMe(ProcArrayLock));

 if (!already_locked)
  LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 procArray->replication_slot_xmin = xmin;
 procArray->replication_slot_catalog_xmin = catalog_xmin;

 if (!already_locked)
  LWLockRelease(ProcArrayLock);
}
