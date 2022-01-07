
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int just_dirtied; int dirty; int mutex; } ;
typedef TYPE_1__ ReplicationSlot ;


 int Assert (int ) ;
 TYPE_1__* MyReplicationSlot ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
ReplicationSlotMarkDirty(void)
{
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(MyReplicationSlot != ((void*)0));

 SpinLockAcquire(&slot->mutex);
 MyReplicationSlot->just_dirtied = 1;
 MyReplicationSlot->dirty = 1;
 SpinLockRelease(&slot->mutex);
}
