
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;


 int ACLCHECK_NOT_OWNER ;
 int AccessExclusiveLock ;
 int CHECKPOINT_FORCE ;
 int CHECKPOINT_IMMEDIATE ;
 int CHECKPOINT_WAIT ;
 int CatalogTupleDelete (int ,int *) ;
 int CountDBSubscriptions (scalar_t__) ;
 scalar_t__ CountOtherDBBackends (scalar_t__,int*,int*) ;
 int DATABASEOID ;
 int DatabaseRelationId ;
 int DeleteSharedComments (scalar_t__,int ) ;
 int DeleteSharedSecurityLabel (scalar_t__,int ) ;
 int DropDatabaseBuffers (scalar_t__) ;
 int DropSetting (scalar_t__,int ) ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int ForceSyncCommit () ;
 int ForgetDatabaseSyncRequests (scalar_t__) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int InvokeObjectDropHook (int ,scalar_t__,int ) ;
 scalar_t__ MyDatabaseId ;
 int NOTICE ;
 int NoLock ;
 int OBJECT_DATABASE ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int ReplicationSlotsCountDBSlots (scalar_t__,int*,int*) ;
 int ReplicationSlotsDropDBSlots (scalar_t__) ;
 int RequestCheckpoint (int) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int TerminateOtherDBBackends (scalar_t__) ;
 int aclcheck_error (int ,int ,char const*) ;
 int dropDatabaseDependencies (scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_busy_db (int,int) ;
 int errdetail_plural (char*,char*,int,int) ;
 int errmsg (char*,...) ;
 int get_db_info (char const*,int ,scalar_t__*,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *) ;
 int pg_database_ownercheck (scalar_t__,int ) ;
 int pgstat_drop_database (scalar_t__) ;
 int remove_dbtablespaces (scalar_t__) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
dropdb(const char *dbname, bool missing_ok, bool force)
{
 Oid db_id;
 bool db_istemplate;
 Relation pgdbrel;
 HeapTuple tup;
 int notherbackends;
 int npreparedxacts;
 int nslots,
    nslots_active;
 int nsubscriptions;
 pgdbrel = table_open(DatabaseRelationId, RowExclusiveLock);

 if (!get_db_info(dbname, AccessExclusiveLock, &db_id, ((void*)0), ((void*)0),
      &db_istemplate, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
 {
  if (!missing_ok)
  {
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database \"%s\" does not exist", dbname)));
  }
  else
  {

   table_close(pgdbrel, RowExclusiveLock);
   ereport(NOTICE,
     (errmsg("database \"%s\" does not exist, skipping",
       dbname)));
   return;
  }
 }




 if (!pg_database_ownercheck(db_id, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
        dbname);


 InvokeObjectDropHook(DatabaseRelationId, db_id, 0);






 if (db_istemplate)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot drop a template database")));


 if (db_id == MyDatabaseId)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("cannot drop the currently open database")));







 (void) ReplicationSlotsCountDBSlots(db_id, &nslots, &nslots_active);
 if (nslots_active)
 {
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("database \"%s\" is used by an active logical replication slot",
      dbname),
     errdetail_plural("There is %d active slot.",
          "There are %d active slots.",
          nslots_active, nslots_active)));
 }







 if ((nsubscriptions = CountDBSubscriptions(db_id)) > 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("database \"%s\" is being used by logical replication subscription",
      dbname),
     errdetail_plural("There is %d subscription.",
          "There are %d subscriptions.",
          nsubscriptions, nsubscriptions)));






 if (force)
  TerminateOtherDBBackends(db_id);







 if (CountOtherDBBackends(db_id, &notherbackends, &npreparedxacts))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("database \"%s\" is being accessed by other users",
      dbname),
     errdetail_busy_db(notherbackends, npreparedxacts)));




 tup = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(db_id));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for database %u", db_id);

 CatalogTupleDelete(pgdbrel, &tup->t_self);

 ReleaseSysCache(tup);




 DeleteSharedComments(db_id, DatabaseRelationId);
 DeleteSharedSecurityLabel(db_id, DatabaseRelationId);




 DropSetting(db_id, InvalidOid);




 dropDatabaseDependencies(db_id);




 ReplicationSlotsDropDBSlots(db_id);






 DropDatabaseBuffers(db_id);




 pgstat_drop_database(db_id);







 ForgetDatabaseSyncRequests(db_id);







 RequestCheckpoint(CHECKPOINT_IMMEDIATE | CHECKPOINT_FORCE | CHECKPOINT_WAIT);




 remove_dbtablespaces(db_id);




 table_close(pgdbrel, NoLock);







 ForceSyncCommit();
}
