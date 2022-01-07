
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int encoding; int datistemplate; int datallowconn; int datctype; int datcollate; int dattablespace; int datminmxid; int datfrozenxid; int datlastsysoid; int datdba; int datname; int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int MultiXactId ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int AccessShareLock ;
 int Anum_pg_database_datname ;
 int AssertArg (char const*) ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int DATABASEOID ;
 int DatabaseNameIndexId ;
 int DatabaseRelationId ;
 int F_NAMEEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int LockSharedObject (int ,int ,int ,int ) ;
 int NameStr (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCache1 (int ,int ) ;
 int UnlockSharedObject (int ,int ,int ,int ) ;
 char* pstrdup (int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static bool
get_db_info(const char *name, LOCKMODE lockmode,
   Oid *dbIdP, Oid *ownerIdP,
   int *encodingP, bool *dbIsTemplateP, bool *dbAllowConnP,
   Oid *dbLastSysOidP, TransactionId *dbFrozenXidP,
   MultiXactId *dbMinMultiP,
   Oid *dbTablespace, char **dbCollate, char **dbCtype)
{
 bool result = 0;
 Relation relation;

 AssertArg(name);


 relation = table_open(DatabaseRelationId, AccessShareLock);






 for (;;)
 {
  ScanKeyData scanKey;
  SysScanDesc scan;
  HeapTuple tuple;
  Oid dbOid;





  ScanKeyInit(&scanKey,
     Anum_pg_database_datname,
     BTEqualStrategyNumber, F_NAMEEQ,
     CStringGetDatum(name));

  scan = systable_beginscan(relation, DatabaseNameIndexId, 1,
          ((void*)0), 1, &scanKey);

  tuple = systable_getnext(scan);

  if (!HeapTupleIsValid(tuple))
  {

   systable_endscan(scan);
   break;
  }

  dbOid = ((Form_pg_database) GETSTRUCT(tuple))->oid;

  systable_endscan(scan);




  if (lockmode != NoLock)
   LockSharedObject(DatabaseRelationId, dbOid, 0, lockmode);






  tuple = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(dbOid));
  if (HeapTupleIsValid(tuple))
  {
   Form_pg_database dbform = (Form_pg_database) GETSTRUCT(tuple);

   if (strcmp(name, NameStr(dbform->datname)) == 0)
   {

    if (dbIdP)
     *dbIdP = dbOid;

    if (ownerIdP)
     *ownerIdP = dbform->datdba;

    if (encodingP)
     *encodingP = dbform->encoding;

    if (dbIsTemplateP)
     *dbIsTemplateP = dbform->datistemplate;

    if (dbAllowConnP)
     *dbAllowConnP = dbform->datallowconn;

    if (dbLastSysOidP)
     *dbLastSysOidP = dbform->datlastsysoid;

    if (dbFrozenXidP)
     *dbFrozenXidP = dbform->datfrozenxid;

    if (dbMinMultiP)
     *dbMinMultiP = dbform->datminmxid;

    if (dbTablespace)
     *dbTablespace = dbform->dattablespace;

    if (dbCollate)
     *dbCollate = pstrdup(NameStr(dbform->datcollate));
    if (dbCtype)
     *dbCtype = pstrdup(NameStr(dbform->datctype));
    ReleaseSysCache(tuple);
    result = 1;
    break;
   }

   ReleaseSysCache(tuple);
  }

  if (lockmode != NoLock)
   UnlockSharedObject(DatabaseRelationId, dbOid, 0, lockmode);
 }

 table_close(relation, AccessShareLock);

 return result;
}
