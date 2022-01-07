
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int replication_slot_catalog_xmin; int replication_slot_xmin; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 TYPE_1__* procArray ;

void
ProcArrayGetReplicationSlotXmin(TransactionId *xmin,
        TransactionId *catalog_xmin)
{
 LWLockAcquire(ProcArrayLock, LW_SHARED);

 if (xmin != ((void*)0))
  *xmin = procArray->replication_slot_xmin;

 if (catalog_xmin != ((void*)0))
  *catalog_xmin = procArray->replication_slot_catalog_xmin;

 LWLockRelease(ProcArrayLock);
}
