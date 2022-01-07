
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_2__ {int spcname; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_tablespace ;


 int AccessShareLock ;
 int Anum_pg_tablespace_oid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TableSpaceRelationId ;
 int heap_getnext (int ,int ) ;
 char* pstrdup (int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

char *
get_tablespace_name(Oid spc_oid)
{
 char *result;
 Relation rel;
 TableScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];






 rel = table_open(TableSpaceRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_tablespace_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(spc_oid));
 scandesc = table_beginscan_catalog(rel, 1, entry);
 tuple = heap_getnext(scandesc, ForwardScanDirection);


 if (HeapTupleIsValid(tuple))
  result = pstrdup(NameStr(((Form_pg_tablespace) GETSTRUCT(tuple))->spcname));
 else
  result = ((void*)0);

 table_endscan(scandesc);
 table_close(rel, AccessShareLock);

 return result;
}
