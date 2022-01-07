
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ persistency; } ;
struct TYPE_5__ {int mutex; TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int) ;
 TYPE_2__* MyReplicationSlot ;
 scalar_t__ RS_PERSISTENT ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotSave () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
ReplicationSlotPersist(void)
{
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(slot != ((void*)0));
 Assert(slot->data.persistency != RS_PERSISTENT);

 SpinLockAcquire(&slot->mutex);
 slot->data.persistency = RS_PERSISTENT;
 SpinLockRelease(&slot->mutex);

 ReplicationSlotMarkDirty();
 ReplicationSlotSave();
}
