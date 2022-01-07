
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


 int Anum_pg_collation_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CollationOidIndexId ;
 int CollationRelationId ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
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
RemoveCollationById(Oid collationOid)
{
 Relation rel;
 ScanKeyData scanKeyData;
 SysScanDesc scandesc;
 HeapTuple tuple;

 rel = table_open(CollationRelationId, RowExclusiveLock);

 ScanKeyInit(&scanKeyData,
    Anum_pg_collation_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(collationOid));

 scandesc = systable_beginscan(rel, CollationOidIndexId, 1,
          ((void*)0), 1, &scanKeyData);

 tuple = systable_getnext(scandesc);

 if (HeapTupleIsValid(tuple))
  CatalogTupleDelete(rel, &tuple->t_self);
 else
  elog(ERROR, "could not find tuple for collation %u", collationOid);

 systable_endscan(scandesc);

 table_close(rel, RowExclusiveLock);
}
