
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; int slotname; } ;
typedef TYPE_1__ DropReplicationSlotCmd ;


 int DestRemote ;
 int EndCommand (char*,int ) ;
 int ReplicationSlotDrop (int ,int) ;

__attribute__((used)) static void
DropReplicationSlot(DropReplicationSlotCmd *cmd)
{
 ReplicationSlotDrop(cmd->slotname, !cmd->wait);
 EndCommand("DROP_REPLICATION_SLOT", DestRemote);
}
