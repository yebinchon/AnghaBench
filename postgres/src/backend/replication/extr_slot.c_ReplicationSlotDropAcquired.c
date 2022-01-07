
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReplicationSlot ;


 int Assert (int ) ;
 int * MyReplicationSlot ;
 int ReplicationSlotDropPtr (int *) ;

__attribute__((used)) static void
ReplicationSlotDropAcquired(void)
{
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(MyReplicationSlot != ((void*)0));


 MyReplicationSlot = ((void*)0);

 ReplicationSlotDropPtr(slot);
}
