
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
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int AccessShareLock ;
 int Anum_pg_class_relkind ;
 int Anum_pg_class_relnamespace ;
 int BTEqualStrategyNumber ;
 int CharGetDatum (char) ;
 int F_CHAREQ ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * heap_getnext (int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
getRelationsInNamespace(Oid namespaceId, char relkind)
{
 List *relations = NIL;
 ScanKeyData key[2];
 Relation rel;
 TableScanDesc scan;
 HeapTuple tuple;

 ScanKeyInit(&key[0],
    Anum_pg_class_relnamespace,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(namespaceId));
 ScanKeyInit(&key[1],
    Anum_pg_class_relkind,
    BTEqualStrategyNumber, F_CHAREQ,
    CharGetDatum(relkind));

 rel = table_open(RelationRelationId, AccessShareLock);
 scan = table_beginscan_catalog(rel, 2, key);

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Oid oid = ((Form_pg_class) GETSTRUCT(tuple))->oid;

  relations = lappend_oid(relations, oid);
 }

 table_endscan(scan);
 table_close(rel, AccessShareLock);

 return relations;
}
