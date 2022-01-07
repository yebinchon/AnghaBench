
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_4__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_conversion_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int ConversionRelationId ;
 int ERROR ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 TYPE_1__* heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

void
RemoveConversionById(Oid conversionOid)
{
 Relation rel;
 HeapTuple tuple;
 TableScanDesc scan;
 ScanKeyData scanKeyData;

 ScanKeyInit(&scanKeyData,
    Anum_pg_conversion_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(conversionOid));


 rel = table_open(ConversionRelationId, RowExclusiveLock);

 scan = table_beginscan_catalog(rel, 1, &scanKeyData);


 if (HeapTupleIsValid(tuple = heap_getnext(scan, ForwardScanDirection)))
  CatalogTupleDelete(rel, &tuple->t_self);
 else
  elog(ERROR, "could not find tuple for conversion %u", conversionOid);
 table_endscan(scan);
 table_close(rel, RowExclusiveLock);
}
