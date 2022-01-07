
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_extension ;


 int AccessShareLock ;
 int Anum_pg_extension_extname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int ExtensionNameIndexId ;
 int ExtensionRelationId ;
 int F_NAMEEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_extension_oid(const char *extname, bool missing_ok)
{
 Oid result;
 Relation rel;
 SysScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];

 rel = table_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_extname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(extname));

 scandesc = systable_beginscan(rel, ExtensionNameIndexId, 1,
          ((void*)0), 1, entry);

 tuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(tuple))
  result = ((Form_pg_extension) GETSTRUCT(tuple))->oid;
 else
  result = InvalidOid;

 systable_endscan(scandesc);

 table_close(rel, AccessShareLock);

 if (!OidIsValid(result) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("extension \"%s\" does not exist",
      extname)));

 return result;
}
