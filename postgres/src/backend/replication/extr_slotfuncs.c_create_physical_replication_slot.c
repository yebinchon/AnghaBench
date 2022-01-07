
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_3__ {int restart_lsn; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int Assert (int) ;
 TYPE_2__* MyReplicationSlot ;
 int RS_PERSISTENT ;
 int RS_TEMPORARY ;
 int ReplicationSlotCreate (char*,int,int ) ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotReserveWal () ;
 int ReplicationSlotSave () ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;

__attribute__((used)) static void
create_physical_replication_slot(char *name, bool immediately_reserve,
         bool temporary, XLogRecPtr restart_lsn)
{
 Assert(!MyReplicationSlot);


 ReplicationSlotCreate(name, 0,
        temporary ? RS_TEMPORARY : RS_PERSISTENT);

 if (immediately_reserve)
 {

  if (XLogRecPtrIsInvalid(restart_lsn))
   ReplicationSlotReserveWal();
  else
   MyReplicationSlot->data.restart_lsn = restart_lsn;


  ReplicationSlotMarkDirty();
  ReplicationSlotSave();
 }
}
