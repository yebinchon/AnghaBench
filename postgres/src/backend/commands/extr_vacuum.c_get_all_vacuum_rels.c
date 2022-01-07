
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_3__ {scalar_t__ relkind; int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int AccessShareLock ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int RelationRelationId ;
 int * heap_getnext (int ,int ) ;
 int * lappend (int *,int ) ;
 int makeVacuumRelation (int *,int ,int *) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;
 int vac_context ;
 int vacuum_is_relation_owner (int ,TYPE_1__*,int) ;

__attribute__((used)) static List *
get_all_vacuum_rels(int options)
{
 List *vacrels = NIL;
 Relation pgclass;
 TableScanDesc scan;
 HeapTuple tuple;

 pgclass = table_open(RelationRelationId, AccessShareLock);

 scan = table_beginscan_catalog(pgclass, 0, ((void*)0));

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Form_pg_class classForm = (Form_pg_class) GETSTRUCT(tuple);
  MemoryContext oldcontext;
  Oid relid = classForm->oid;


  if (!vacuum_is_relation_owner(relid, classForm, options))
   continue;






  if (classForm->relkind != RELKIND_RELATION &&
   classForm->relkind != RELKIND_MATVIEW &&
   classForm->relkind != RELKIND_PARTITIONED_TABLE)
   continue;






  oldcontext = MemoryContextSwitchTo(vac_context);
  vacrels = lappend(vacrels, makeVacuumRelation(((void*)0),
               relid,
               NIL));
  MemoryContextSwitchTo(oldcontext);
 }

 table_endscan(scan);
 table_close(pgclass, AccessShareLock);

 return vacrels;
}
