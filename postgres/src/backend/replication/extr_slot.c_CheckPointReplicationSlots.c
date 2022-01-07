
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;


 int DEBUG1 ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MAXPGPATH ;
 char* NameStr (int ) ;
 int ReplicationSlotAllocationLock ;
 TYPE_4__* ReplicationSlotCtl ;
 int SaveSlotToPath (TYPE_2__*,char*,int ) ;
 int elog (int ,char*) ;
 int max_replication_slots ;
 int sprintf (char*,char*,char*) ;

void
CheckPointReplicationSlots(void)
{
 int i;

 elog(DEBUG1, "performing replication slot checkpoint");
 LWLockAcquire(ReplicationSlotAllocationLock, LW_SHARED);

 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];
  char path[MAXPGPATH];

  if (!s->in_use)
   continue;


  sprintf(path, "pg_replslot/%s", NameStr(s->data.name));
  SaveSlotToPath(s, path, LOG);
 }
 LWLockRelease(ReplicationSlotAllocationLock);
}
