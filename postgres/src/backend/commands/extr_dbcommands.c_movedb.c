
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ tablespace_id; scalar_t__ db_id; } ;
typedef TYPE_1__ xl_dbase_drop_rec ;
struct TYPE_12__ {scalar_t__ src_tablespace_id; scalar_t__ src_db_id; scalar_t__ tablespace_id; scalar_t__ db_id; } ;
typedef TYPE_2__ xl_dbase_create_rec ;
struct dirent {int d_name; } ;
typedef int new_record_repl ;
typedef int new_record_nulls ;
typedef int new_record ;
struct TYPE_13__ {scalar_t__ dest_tsoid; scalar_t__ dest_dboid; } ;
typedef TYPE_3__ movedb_failure_params ;
struct TYPE_14__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_4__* HeapTuple ;
typedef int Datum ;
typedef int DIR ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int AccessExclusiveLock ;
 int * AllocateDir (char*) ;
 int Anum_pg_database_datname ;
 int Anum_pg_database_dattablespace ;
 int BTEqualStrategyNumber ;
 int CHECKPOINT_FLUSH_ALL ;
 int CHECKPOINT_FORCE ;
 int CHECKPOINT_IMMEDIATE ;
 int CHECKPOINT_WAIT ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_4__*) ;
 int CommitTransactionCommand () ;
 scalar_t__ CountOtherDBBackends (scalar_t__,int*,int*) ;
 int DatabaseNameIndexId ;
 int DatabaseRelationId ;
 int DropDatabaseBuffers (scalar_t__) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 int F_NAMEEQ ;
 int ForceSyncCommit () ;
 int FreeDir (int *) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 char* GetDatabasePath (scalar_t__,scalar_t__) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_4__*) ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 int LockSharedObjectForSession (int ,scalar_t__,int ,int ) ;
 int MemSet (int*,int,int) ;
 scalar_t__ MyDatabaseId ;
 int Natts_pg_database ;
 int NoLock ;
 int OBJECT_DATABASE ;
 int OBJECT_TABLESPACE ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PG_END_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int PG_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int PointerGetDatum (TYPE_3__*) ;
 int PopActiveSnapshot () ;
 int RM_DBASE_ID ;
 struct dirent* ReadDir (int *,char*) ;
 int RelationGetDescr (int ) ;
 int RequestCheckpoint (int) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int StartTransactionCommand () ;
 int UnlockSharedObjectForSession (int ,scalar_t__,int ,int ) ;
 int WARNING ;
 int XLOG_DBASE_CREATE ;
 int XLOG_DBASE_DROP ;
 int XLR_SPECIAL_REL_UPDATE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int) ;
 int XLogRegisterData (char*,int) ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int copydir (char*,char*,int) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_busy_db (int,int) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int get_db_info (char const*,int ,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *) ;
 scalar_t__ get_tablespace_oid (char const*,int) ;
 TYPE_4__* heap_modify_tuple (TYPE_4__*,int ,int*,int*,int*) ;
 int movedb_failure_callback ;
 int pg_database_ownercheck (scalar_t__,int ) ;
 scalar_t__ pg_tablespace_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ rmdir (char*) ;
 int rmtree (char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_4__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
movedb(const char *dbname, const char *tblspcname)
{
 Oid db_id;
 Relation pgdbrel;
 int notherbackends;
 int npreparedxacts;
 HeapTuple oldtuple,
    newtuple;
 Oid src_tblspcoid,
    dst_tblspcoid;
 Datum new_record[Natts_pg_database];
 bool new_record_nulls[Natts_pg_database];
 bool new_record_repl[Natts_pg_database];
 ScanKeyData scankey;
 SysScanDesc sysscan;
 AclResult aclresult;
 char *src_dbpath;
 char *dst_dbpath;
 DIR *dstdir;
 struct dirent *xlde;
 movedb_failure_params fparms;







 pgdbrel = table_open(DatabaseRelationId, RowExclusiveLock);

 if (!get_db_info(dbname, AccessExclusiveLock, &db_id, ((void*)0), ((void*)0),
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &src_tblspcoid, ((void*)0), ((void*)0)))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database \"%s\" does not exist", dbname)));







 LockSharedObjectForSession(DatabaseRelationId, db_id, 0,
          AccessExclusiveLock);




 if (!pg_database_ownercheck(db_id, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
        dbname);




 if (db_id == MyDatabaseId)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("cannot change the tablespace of the currently open database")));




 dst_tblspcoid = get_tablespace_oid(tblspcname, 0);




 aclresult = pg_tablespace_aclcheck(dst_tblspcoid, GetUserId(),
            ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_TABLESPACE,
        tblspcname);




 if (dst_tblspcoid == GLOBALTABLESPACE_OID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("pg_global cannot be used as default tablespace")));




 if (src_tblspcoid == dst_tblspcoid)
 {
  table_close(pgdbrel, NoLock);
  UnlockSharedObjectForSession(DatabaseRelationId, db_id, 0,
          AccessExclusiveLock);
  return;
 }







 if (CountOtherDBBackends(db_id, &notherbackends, &npreparedxacts))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),
     errmsg("database \"%s\" is being accessed by other users",
      dbname),
     errdetail_busy_db(notherbackends, npreparedxacts)));




 src_dbpath = GetDatabasePath(db_id, src_tblspcoid);
 dst_dbpath = GetDatabasePath(db_id, dst_tblspcoid);
 RequestCheckpoint(CHECKPOINT_IMMEDIATE | CHECKPOINT_FORCE | CHECKPOINT_WAIT
       | CHECKPOINT_FLUSH_ALL);
 DropDatabaseBuffers(db_id);
 dstdir = AllocateDir(dst_dbpath);
 if (dstdir != ((void*)0))
 {
  while ((xlde = ReadDir(dstdir, dst_dbpath)) != ((void*)0))
  {
   if (strcmp(xlde->d_name, ".") == 0 ||
    strcmp(xlde->d_name, "..") == 0)
    continue;

   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("some relations of database \"%s\" are already in tablespace \"%s\"",
       dbname, tblspcname),
      errhint("You must move them back to the database's default tablespace before using this command.")));
  }

  FreeDir(dstdir);





  if (rmdir(dst_dbpath) != 0)
   elog(ERROR, "could not remove directory \"%s\": %m",
     dst_dbpath);
 }







 fparms.dest_dboid = db_id;
 fparms.dest_tsoid = dst_tblspcoid;
 PG_ENSURE_ERROR_CLEANUP(movedb_failure_callback,
       PointerGetDatum(&fparms));
 {



  copydir(src_dbpath, dst_dbpath, 0);




  {
   xl_dbase_create_rec xlrec;

   xlrec.db_id = db_id;
   xlrec.tablespace_id = dst_tblspcoid;
   xlrec.src_db_id = db_id;
   xlrec.src_tablespace_id = src_tblspcoid;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, sizeof(xl_dbase_create_rec));

   (void) XLogInsert(RM_DBASE_ID,
         XLOG_DBASE_CREATE | XLR_SPECIAL_REL_UPDATE);
  }




  ScanKeyInit(&scankey,
     Anum_pg_database_datname,
     BTEqualStrategyNumber, F_NAMEEQ,
     CStringGetDatum(dbname));
  sysscan = systable_beginscan(pgdbrel, DatabaseNameIndexId, 1,
          ((void*)0), 1, &scankey);
  oldtuple = systable_getnext(sysscan);
  if (!HeapTupleIsValid(oldtuple))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database \"%s\" does not exist", dbname)));

  MemSet(new_record, 0, sizeof(new_record));
  MemSet(new_record_nulls, 0, sizeof(new_record_nulls));
  MemSet(new_record_repl, 0, sizeof(new_record_repl));

  new_record[Anum_pg_database_dattablespace - 1] = ObjectIdGetDatum(dst_tblspcoid);
  new_record_repl[Anum_pg_database_dattablespace - 1] = 1;

  newtuple = heap_modify_tuple(oldtuple, RelationGetDescr(pgdbrel),
          new_record,
          new_record_nulls, new_record_repl);
  CatalogTupleUpdate(pgdbrel, &oldtuple->t_self, newtuple);

  InvokeObjectPostAlterHook(DatabaseRelationId, db_id, 0);

  systable_endscan(sysscan);







  RequestCheckpoint(CHECKPOINT_IMMEDIATE | CHECKPOINT_FORCE | CHECKPOINT_WAIT);







  ForceSyncCommit();




  table_close(pgdbrel, NoLock);
 }
 PG_END_ENSURE_ERROR_CLEANUP(movedb_failure_callback,
        PointerGetDatum(&fparms));
 PopActiveSnapshot();
 CommitTransactionCommand();


 StartTransactionCommand();




 if (!rmtree(src_dbpath, 1))
  ereport(WARNING,
    (errmsg("some useless files may be left behind in old database directory \"%s\"",
      src_dbpath)));




 {
  xl_dbase_drop_rec xlrec;

  xlrec.db_id = db_id;
  xlrec.tablespace_id = src_tblspcoid;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, sizeof(xl_dbase_drop_rec));

  (void) XLogInsert(RM_DBASE_ID,
        XLOG_DBASE_DROP | XLR_SPECIAL_REL_UPDATE);
 }


 UnlockSharedObjectForSession(DatabaseRelationId, db_id, 0,
         AccessExclusiveLock);
}
