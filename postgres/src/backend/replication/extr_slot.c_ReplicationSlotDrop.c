
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int * MyReplicationSlot ;
 int ReplicationSlotAcquire (char const*,int) ;
 int ReplicationSlotDropAcquired () ;

void
ReplicationSlotDrop(const char *name, bool nowait)
{
 Assert(MyReplicationSlot == ((void*)0));

 ReplicationSlotAcquire(name, nowait);

 ReplicationSlotDropAcquired();
}
