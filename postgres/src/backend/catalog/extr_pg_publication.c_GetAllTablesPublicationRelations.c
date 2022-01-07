
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_3__ {int oid; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int AccessShareLock ;
 int Anum_pg_class_relkind ;
 int BTEqualStrategyNumber ;
 int CharGetDatum (int ) ;
 int F_CHAREQ ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 int * NIL ;
 int RELKIND_RELATION ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * heap_getnext (int ,int ) ;
 scalar_t__ is_publishable_class (int ,TYPE_1__*) ;
 int * lappend_oid (int *,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

List *
GetAllTablesPublicationRelations(void)
{
 Relation classRel;
 ScanKeyData key[1];
 TableScanDesc scan;
 HeapTuple tuple;
 List *result = NIL;

 classRel = table_open(RelationRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_class_relkind,
    BTEqualStrategyNumber, F_CHAREQ,
    CharGetDatum(RELKIND_RELATION));

 scan = table_beginscan_catalog(classRel, 1, key);

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Form_pg_class relForm = (Form_pg_class) GETSTRUCT(tuple);
  Oid relid = relForm->oid;

  if (is_publishable_class(relid, relForm))
   result = lappend_oid(result, relid);
 }

 table_endscan(scan);
 table_close(classRel, AccessShareLock);

 return result;
}
