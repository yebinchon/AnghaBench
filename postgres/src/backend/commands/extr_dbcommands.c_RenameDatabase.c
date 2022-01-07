
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int datname; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_database ;


 int ACLCHECK_NOT_OWNER ;
 int AccessExclusiveLock ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 scalar_t__ CountOtherDBBackends (scalar_t__,int*,int*) ;
 int DATABASEOID ;
 int DatabaseRelationId ;
 int ERRCODE_DUPLICATE_DATABASE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 scalar_t__ MyDatabaseId ;
 int NoLock ;
 int OBJECT_DATABASE ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int WARNING ;
 int aclcheck_error (int ,int ,char const*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_busy_db (int,int) ;
 int errmsg (char*,...) ;
 int get_database_oid (char const*,int) ;
 int get_db_info (char const*,int ,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int have_createdb_privilege () ;
 int namestrcpy (int *,char const*) ;
 int pg_database_ownercheck (scalar_t__,int ) ;
 int * strstr (char const*,char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
RenameDatabase(const char *oldname, const char *newname)
{
 Oid db_id;
 HeapTuple newtup;
 Relation rel;
 int notherbackends;
 int npreparedxacts;
 ObjectAddress address;





 rel = table_open(DatabaseRelationId, RowExclusiveLock);

 if (!get_db_info(oldname, AccessExclusiveLock, &db_id, ((void*)0), ((void*)0),
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database \"%s\" does not exist", oldname)));


 if (!pg_database_ownercheck(db_id, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
        oldname);


 if (!have_createdb_privilege())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to rename database")));
 if (OidIsValid(get_database_oid(newname, 1)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_DATABASE),
     errmsg("database \"%s\" already exists", newname)));







 if (db_id == MyDatabaseId)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("current database cannot be renamed")));







 if (CountOtherDBBackends(db_id, &notherbackends, &npreparedxacts))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("database \"%s\" is being accessed by other users",
      oldname),
     errdetail_busy_db(notherbackends, npreparedxacts)));


 newtup = SearchSysCacheCopy1(DATABASEOID, ObjectIdGetDatum(db_id));
 if (!HeapTupleIsValid(newtup))
  elog(ERROR, "cache lookup failed for database %u", db_id);
 namestrcpy(&(((Form_pg_database) GETSTRUCT(newtup))->datname), newname);
 CatalogTupleUpdate(rel, &newtup->t_self, newtup);

 InvokeObjectPostAlterHook(DatabaseRelationId, db_id, 0);

 ObjectAddressSet(address, DatabaseRelationId, db_id);




 table_close(rel, NoLock);

 return address;
}
