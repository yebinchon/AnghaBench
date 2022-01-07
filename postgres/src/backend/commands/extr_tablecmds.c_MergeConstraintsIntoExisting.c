
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_26__ {scalar_t__ contype; int coninhcount; int conislocal; int conname; scalar_t__ convalidated; scalar_t__ connoinherit; } ;
struct TYPE_25__ {int t_self; } ;
struct TYPE_24__ {TYPE_1__* rd_rel; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_constraint ;


 int Anum_pg_constraint_conrelid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_3__*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_3__*) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RelationGetDescr (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int constraints_equivalent (TYPE_3__*,TYPE_3__*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 TYPE_3__* heap_copytuple (TYPE_3__*) ;
 int heap_freetuple (TYPE_3__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_3__* systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
MergeConstraintsIntoExisting(Relation child_rel, Relation parent_rel)
{
 Relation catalog_relation;
 TupleDesc tuple_desc;
 SysScanDesc parent_scan;
 ScanKeyData parent_key;
 HeapTuple parent_tuple;
 bool child_is_partition = 0;

 catalog_relation = table_open(ConstraintRelationId, RowExclusiveLock);
 tuple_desc = RelationGetDescr(catalog_relation);


 if (parent_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  child_is_partition = 1;


 ScanKeyInit(&parent_key,
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(parent_rel)));
 parent_scan = systable_beginscan(catalog_relation, ConstraintRelidTypidNameIndexId,
          1, ((void*)0), 1, &parent_key);

 while (HeapTupleIsValid(parent_tuple = systable_getnext(parent_scan)))
 {
  Form_pg_constraint parent_con = (Form_pg_constraint) GETSTRUCT(parent_tuple);
  SysScanDesc child_scan;
  ScanKeyData child_key;
  HeapTuple child_tuple;
  bool found = 0;

  if (parent_con->contype != CONSTRAINT_CHECK)
   continue;


  if (parent_con->connoinherit)
   continue;


  ScanKeyInit(&child_key,
     Anum_pg_constraint_conrelid,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(RelationGetRelid(child_rel)));
  child_scan = systable_beginscan(catalog_relation, ConstraintRelidTypidNameIndexId,
          1, ((void*)0), 1, &child_key);

  while (HeapTupleIsValid(child_tuple = systable_getnext(child_scan)))
  {
   Form_pg_constraint child_con = (Form_pg_constraint) GETSTRUCT(child_tuple);
   HeapTuple child_copy;

   if (child_con->contype != CONSTRAINT_CHECK)
    continue;

   if (strcmp(NameStr(parent_con->conname),
        NameStr(child_con->conname)) != 0)
    continue;

   if (!constraints_equivalent(parent_tuple, child_tuple, tuple_desc))
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("child table \"%s\" has different definition for check constraint \"%s\"",
        RelationGetRelationName(child_rel),
        NameStr(parent_con->conname))));


   if (child_con->connoinherit)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("constraint \"%s\" conflicts with non-inherited constraint on child table \"%s\"",
        NameStr(child_con->conname),
        RelationGetRelationName(child_rel))));





   if (parent_con->convalidated && !child_con->convalidated)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("constraint \"%s\" conflicts with NOT VALID constraint on child table \"%s\"",
        NameStr(child_con->conname),
        RelationGetRelationName(child_rel))));





   child_copy = heap_copytuple(child_tuple);
   child_con = (Form_pg_constraint) GETSTRUCT(child_copy);
   child_con->coninhcount++;






   if (child_is_partition)
   {
    Assert(child_con->coninhcount == 1);
    child_con->conislocal = 0;
   }

   CatalogTupleUpdate(catalog_relation, &child_copy->t_self, child_copy);
   heap_freetuple(child_copy);

   found = 1;
   break;
  }

  systable_endscan(child_scan);

  if (!found)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("child table is missing constraint \"%s\"",
       NameStr(parent_con->conname))));
 }

 systable_endscan(parent_scan);
 table_close(catalog_relation, RowExclusiveLock);
}
