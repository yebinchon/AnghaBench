
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CheckSlotRequirements () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ WAL_LEVEL_LOGICAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ wal_level ;

void
CheckLogicalDecodingRequirements(void)
{
 CheckSlotRequirements();






 if (wal_level < WAL_LEVEL_LOGICAL)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("logical decoding requires wal_level >= logical")));

 if (MyDatabaseId == InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("logical decoding requires a database connection")));
 if (RecoveryInProgress())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("logical decoding cannot be used while in recovery")));
}
