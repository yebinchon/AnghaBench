
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_extension_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 scalar_t__ CurrentExtensionObject ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExtensionOidIndexId ;
 int ExtensionRelationId ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_extension_name (scalar_t__) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveExtensionById(Oid extId)
{
 Relation rel;
 SysScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];
 if (extId == CurrentExtensionObject)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot drop extension \"%s\" because it is being modified",
      get_extension_name(extId))));

 rel = table_open(ExtensionRelationId, RowExclusiveLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(extId));
 scandesc = systable_beginscan(rel, ExtensionOidIndexId, 1,
          ((void*)0), 1, entry);

 tuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(tuple))
  CatalogTupleDelete(rel, &tuple->t_self);

 systable_endscan(scandesc);

 table_close(rel, RowExclusiveLock);
}
