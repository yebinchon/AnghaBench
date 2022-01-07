
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int AccessMethodProcedureOidIndexId ;
 int AccessMethodProcedureRelationId ;
 int Anum_pg_amproc_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveAmProcEntryById(Oid entryOid)
{
 Relation rel;
 HeapTuple tup;
 ScanKeyData skey[1];
 SysScanDesc scan;

 ScanKeyInit(&skey[0],
    Anum_pg_amproc_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(entryOid));

 rel = table_open(AccessMethodProcedureRelationId, RowExclusiveLock);

 scan = systable_beginscan(rel, AccessMethodProcedureOidIndexId, 1,
         ((void*)0), 1, skey);


 tup = systable_getnext(scan);
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "could not find tuple for amproc entry %u", entryOid);

 CatalogTupleDelete(rel, &tup->t_self);

 systable_endscan(scan);
 table_close(rel, RowExclusiveLock);
}
