
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_2__ {int oid; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_tablespace ;


 int AccessShareLock ;
 int Anum_pg_tablespace_spcname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TableSpaceRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

Oid
get_tablespace_oid(const char *tablespacename, bool missing_ok)
{
 Oid result;
 Relation rel;
 TableScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];






 rel = table_open(TableSpaceRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_tablespace_spcname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(tablespacename));
 scandesc = table_beginscan_catalog(rel, 1, entry);
 tuple = heap_getnext(scandesc, ForwardScanDirection);


 if (HeapTupleIsValid(tuple))
  result = ((Form_pg_tablespace) GETSTRUCT(tuple))->oid;
 else
  result = InvalidOid;

 table_endscan(scandesc);
 table_close(rel, AccessShareLock);

 if (!OidIsValid(result) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace \"%s\" does not exist",
      tablespacename)));

 return result;
}
