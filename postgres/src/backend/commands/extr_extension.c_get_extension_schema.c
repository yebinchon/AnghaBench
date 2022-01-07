
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extnamespace; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_extension ;


 int AccessShareLock ;
 int Anum_pg_extension_oid ;
 int BTEqualStrategyNumber ;
 int ExtensionOidIndexId ;
 int ExtensionRelationId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static Oid
get_extension_schema(Oid ext_oid)
{
 Oid result;
 Relation rel;
 SysScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];

 rel = table_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(ext_oid));

 scandesc = systable_beginscan(rel, ExtensionOidIndexId, 1,
          ((void*)0), 1, entry);

 tuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(tuple))
  result = ((Form_pg_extension) GETSTRUCT(tuple))->extnamespace;
 else
  result = InvalidOid;

 systable_endscan(scandesc);

 table_close(rel, AccessShareLock);

 return result;
}
