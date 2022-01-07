
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_12__ {int datdba; int oid; } ;
struct TYPE_11__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_database ;
typedef int Datum ;
typedef int Acl ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_database_datacl ;
 int Anum_pg_database_datdba ;
 int Anum_pg_database_datname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatabaseNameIndexId ;
 int DatabaseRelationId ;
 int DatumGetAclP (int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 int F_NAMEEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int Natts_pg_database ;
 int NoLock ;
 int OBJECT_DATABASE ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int aclcheck_error (int ,int ,char const*) ;
 int * aclnewowner (int ,int ,int ) ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int check_is_member_of_role (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int have_createdb_privilege () ;
 int heap_freetuple (TYPE_1__*) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int pg_database_ownercheck (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterDatabaseOwner(const char *dbname, Oid newOwnerId)
{
 Oid db_id;
 HeapTuple tuple;
 Relation rel;
 ScanKeyData scankey;
 SysScanDesc scan;
 Form_pg_database datForm;
 ObjectAddress address;






 rel = table_open(DatabaseRelationId, RowExclusiveLock);
 ScanKeyInit(&scankey,
    Anum_pg_database_datname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(dbname));
 scan = systable_beginscan(rel, DatabaseNameIndexId, 1,
         ((void*)0), 1, &scankey);
 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database \"%s\" does not exist", dbname)));

 datForm = (Form_pg_database) GETSTRUCT(tuple);
 db_id = datForm->oid;






 if (datForm->datdba != newOwnerId)
 {
  Datum repl_val[Natts_pg_database];
  bool repl_null[Natts_pg_database];
  bool repl_repl[Natts_pg_database];
  Acl *newAcl;
  Datum aclDatum;
  bool isNull;
  HeapTuple newtuple;


  if (!pg_database_ownercheck(db_id, GetUserId()))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
         dbname);


  check_is_member_of_role(GetUserId(), newOwnerId);
  if (!have_createdb_privilege())
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied to change owner of database")));

  memset(repl_null, 0, sizeof(repl_null));
  memset(repl_repl, 0, sizeof(repl_repl));

  repl_repl[Anum_pg_database_datdba - 1] = 1;
  repl_val[Anum_pg_database_datdba - 1] = ObjectIdGetDatum(newOwnerId);





  aclDatum = heap_getattr(tuple,
        Anum_pg_database_datacl,
        RelationGetDescr(rel),
        &isNull);
  if (!isNull)
  {
   newAcl = aclnewowner(DatumGetAclP(aclDatum),
         datForm->datdba, newOwnerId);
   repl_repl[Anum_pg_database_datacl - 1] = 1;
   repl_val[Anum_pg_database_datacl - 1] = PointerGetDatum(newAcl);
  }

  newtuple = heap_modify_tuple(tuple, RelationGetDescr(rel), repl_val, repl_null, repl_repl);
  CatalogTupleUpdate(rel, &newtuple->t_self, newtuple);

  heap_freetuple(newtuple);


  changeDependencyOnOwner(DatabaseRelationId, db_id, newOwnerId);
 }

 InvokeObjectPostAlterHook(DatabaseRelationId, db_id, 0);

 ObjectAddressSet(address, DatabaseRelationId, db_id);

 systable_endscan(scan);


 table_close(rel, NoLock);

 return address;
}
