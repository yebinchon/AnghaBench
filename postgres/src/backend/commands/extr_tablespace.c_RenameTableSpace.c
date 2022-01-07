
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_10__ {int spcname; int oid; } ;
struct TYPE_9__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_tablespace ;


 int ACLCHECK_NO_PRIV ;
 int Anum_pg_tablespace_spcname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_RESERVED_NAME ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 scalar_t__ IsReservedName (char const*) ;
 int NoLock ;
 int OBJECT_TABLESPACE ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TableSpaceRelationId ;
 int WARNING ;
 int aclcheck_error (int ,int ,char const*) ;
 int allowSystemTableMods ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 TYPE_1__* heap_getnext (int ,int ) ;
 int namestrcpy (int *,char const*) ;
 int pg_tablespace_ownercheck (int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

ObjectAddress
RenameTableSpace(const char *oldname, const char *newname)
{
 Oid tspId;
 Relation rel;
 ScanKeyData entry[1];
 TableScanDesc scan;
 HeapTuple tup;
 HeapTuple newtuple;
 Form_pg_tablespace newform;
 ObjectAddress address;


 rel = table_open(TableSpaceRelationId, RowExclusiveLock);

 ScanKeyInit(&entry[0],
    Anum_pg_tablespace_spcname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(oldname));
 scan = table_beginscan_catalog(rel, 1, entry);
 tup = heap_getnext(scan, ForwardScanDirection);
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace \"%s\" does not exist",
      oldname)));

 newtuple = heap_copytuple(tup);
 newform = (Form_pg_tablespace) GETSTRUCT(newtuple);
 tspId = newform->oid;

 table_endscan(scan);


 if (!pg_tablespace_ownercheck(tspId, GetUserId()))
  aclcheck_error(ACLCHECK_NO_PRIV, OBJECT_TABLESPACE, oldname);


 if (!allowSystemTableMods && IsReservedName(newname))
  ereport(ERROR,
    (errcode(ERRCODE_RESERVED_NAME),
     errmsg("unacceptable tablespace name \"%s\"", newname),
     errdetail("The prefix \"pg_\" is reserved for system tablespaces.")));
 ScanKeyInit(&entry[0],
    Anum_pg_tablespace_spcname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(newname));
 scan = table_beginscan_catalog(rel, 1, entry);
 tup = heap_getnext(scan, ForwardScanDirection);
 if (HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("tablespace \"%s\" already exists",
      newname)));

 table_endscan(scan);


 namestrcpy(&(newform->spcname), newname);

 CatalogTupleUpdate(rel, &newtuple->t_self, newtuple);

 InvokeObjectPostAlterHook(TableSpaceRelationId, tspId, 0);

 ObjectAddressSet(address, TableSpaceRelationId, tspId);

 table_close(rel, NoLock);

 return address;
}
