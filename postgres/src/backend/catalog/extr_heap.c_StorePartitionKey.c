
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int oidvector ;
typedef int nulls ;
typedef int int2vector ;
typedef int int16 ;
struct TYPE_16__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_14__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;
typedef scalar_t__ AttrNumber ;


 int Anum_pg_partitioned_table_partattrs ;
 int Anum_pg_partitioned_table_partclass ;
 int Anum_pg_partitioned_table_partcollation ;
 int Anum_pg_partitioned_table_partdefid ;
 int Anum_pg_partitioned_table_partexprs ;
 int Anum_pg_partitioned_table_partnatts ;
 int Anum_pg_partitioned_table_partrelid ;
 int Anum_pg_partitioned_table_partstrat ;
 int Assert (int) ;
 scalar_t__ CStringGetTextDatum (char*) ;
 int CacheInvalidateRelcache (TYPE_2__*) ;
 int CatalogTupleInsert (TYPE_2__*,int ) ;
 scalar_t__ CharGetDatum (char) ;
 void* CollationRelationId ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int DEPENDENCY_INTERNAL ;
 int DEPENDENCY_NORMAL ;
 scalar_t__ Int16GetDatum (int) ;
 void* InvalidOid ;
 int MemSet (int*,int,int) ;
 int Natts_pg_partitioned_table ;
 scalar_t__ ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 void* OperatorClassRelationId ;
 int PartitionedRelationId ;
 scalar_t__ PointerGetDatum (int *) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RelationGetDescr (TYPE_2__*) ;
 void* RelationGetRelid (TYPE_2__*) ;
 void* RelationRelationId ;
 int RowExclusiveLock ;
 int * buildint2vector (scalar_t__*,int) ;
 int * buildoidvector (scalar_t__*,int) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 char* nodeToString (int *) ;
 int pfree (char*) ;
 int recordDependencyOn (TYPE_3__*,TYPE_3__*,int ) ;
 int recordDependencyOnSingleRelExpr (TYPE_3__*,int *,void*,int ,int ,int) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
StorePartitionKey(Relation rel,
      char strategy,
      int16 partnatts,
      AttrNumber *partattrs,
      List *partexprs,
      Oid *partopclass,
      Oid *partcollation)
{
 int i;
 int2vector *partattrs_vec;
 oidvector *partopclass_vec;
 oidvector *partcollation_vec;
 Datum partexprDatum;
 Relation pg_partitioned_table;
 HeapTuple tuple;
 Datum values[Natts_pg_partitioned_table];
 bool nulls[Natts_pg_partitioned_table];
 ObjectAddress myself;
 ObjectAddress referenced;

 Assert(rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE);


 partattrs_vec = buildint2vector(partattrs, partnatts);
 partopclass_vec = buildoidvector(partopclass, partnatts);
 partcollation_vec = buildoidvector(partcollation, partnatts);


 if (partexprs)
 {
  char *exprString;

  exprString = nodeToString(partexprs);
  partexprDatum = CStringGetTextDatum(exprString);
  pfree(exprString);
 }
 else
  partexprDatum = (Datum) 0;

 pg_partitioned_table = table_open(PartitionedRelationId, RowExclusiveLock);

 MemSet(nulls, 0, sizeof(nulls));


 if (!partexprDatum)
  nulls[Anum_pg_partitioned_table_partexprs - 1] = 1;

 values[Anum_pg_partitioned_table_partrelid - 1] = ObjectIdGetDatum(RelationGetRelid(rel));
 values[Anum_pg_partitioned_table_partstrat - 1] = CharGetDatum(strategy);
 values[Anum_pg_partitioned_table_partnatts - 1] = Int16GetDatum(partnatts);
 values[Anum_pg_partitioned_table_partdefid - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_partitioned_table_partattrs - 1] = PointerGetDatum(partattrs_vec);
 values[Anum_pg_partitioned_table_partclass - 1] = PointerGetDatum(partopclass_vec);
 values[Anum_pg_partitioned_table_partcollation - 1] = PointerGetDatum(partcollation_vec);
 values[Anum_pg_partitioned_table_partexprs - 1] = partexprDatum;

 tuple = heap_form_tuple(RelationGetDescr(pg_partitioned_table), values, nulls);

 CatalogTupleInsert(pg_partitioned_table, tuple);
 table_close(pg_partitioned_table, RowExclusiveLock);


 myself.classId = RelationRelationId;
 myself.objectId = RelationGetRelid(rel);
 myself.objectSubId = 0;


 for (i = 0; i < partnatts; i++)
 {
  referenced.classId = OperatorClassRelationId;
  referenced.objectId = partopclass[i];
  referenced.objectSubId = 0;

  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


  if (OidIsValid(partcollation[i]) &&
   partcollation[i] != DEFAULT_COLLATION_OID)
  {
   referenced.classId = CollationRelationId;
   referenced.objectId = partcollation[i];
   referenced.objectSubId = 0;

   recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
  }
 }







 for (i = 0; i < partnatts; i++)
 {
  if (partattrs[i] == 0)
   continue;

  referenced.classId = RelationRelationId;
  referenced.objectId = RelationGetRelid(rel);
  referenced.objectSubId = partattrs[i];

  recordDependencyOn(&referenced, &myself, DEPENDENCY_INTERNAL);
 }







 if (partexprs)
  recordDependencyOnSingleRelExpr(&myself,
          (Node *) partexprs,
          RelationGetRelid(rel),
          DEPENDENCY_NORMAL,
          DEPENDENCY_INTERNAL,
          1 );






 CacheInvalidateRelcache(rel);
}
