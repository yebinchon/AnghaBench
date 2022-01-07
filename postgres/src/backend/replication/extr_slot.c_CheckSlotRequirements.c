
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ WAL_LEVEL_REPLICA ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ max_replication_slots ;
 scalar_t__ wal_level ;

void
CheckSlotRequirements(void)
{





 if (max_replication_slots == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     (errmsg("replication slots can only be used if max_replication_slots > 0"))));

 if (wal_level < WAL_LEVEL_REPLICA)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("replication slots can only be used if wal_level >= replica")));
}
