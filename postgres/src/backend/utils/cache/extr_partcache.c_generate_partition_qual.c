
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int rd_partcheckvalid; int * rd_partcheck; int * rd_partcheckcxt; TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relispartition; } ;
typedef TYPE_2__* Relation ;
typedef int * MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;


 int ALLOCSET_SMALL_SIZES ;
 int AccessShareLock ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Anum_pg_class_relpartbound ;
 int Assert (int) ;
 int CacheMemoryContext ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int MemoryContextCopyAndSetIdentifier (int *,int ) ;
 int * MemoryContextSwitchTo (int *) ;
 int * NIL ;
 int NoLock ;
 int PartitionBoundSpec ;
 int RELOID ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TextDatumGetCString (int ) ;
 int bound ;
 int castNode (int,int ) ;
 int check_stack_depth () ;
 int * copyObject (int *) ;
 int elog (int ,char*,...) ;
 int get_partition_parent (int ) ;
 int * get_qual_from_partbound (TYPE_2__*,TYPE_2__*,int) ;
 int * list_concat (int *,int *) ;
 int * map_partition_varattnos (int *,int,TYPE_2__*,TYPE_2__*,int*) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (int ,int ) ;
 int stringToNode (int ) ;

__attribute__((used)) static List *
generate_partition_qual(Relation rel)
{
 HeapTuple tuple;
 MemoryContext oldcxt;
 Datum boundDatum;
 bool isnull;
 List *my_qual = NIL,
      *result = NIL;
 Relation parent;
 bool found_whole_row;


 check_stack_depth();


 if (rel->rd_partcheckvalid)
  return copyObject(rel->rd_partcheck);


 parent = relation_open(get_partition_parent(RelationGetRelid(rel)),
         AccessShareLock);


 tuple = SearchSysCache1(RELOID, RelationGetRelid(rel));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u",
    RelationGetRelid(rel));

 boundDatum = SysCacheGetAttr(RELOID, tuple,
         Anum_pg_class_relpartbound,
         &isnull);
 if (!isnull)
 {
  PartitionBoundSpec *bound;

  bound = castNode(PartitionBoundSpec,
       stringToNode(TextDatumGetCString(boundDatum)));

  my_qual = get_qual_from_partbound(rel, parent, bound);
 }

 ReleaseSysCache(tuple);


 if (parent->rd_rel->relispartition)
  result = list_concat(generate_partition_qual(parent), my_qual);
 else
  result = my_qual;







 result = map_partition_varattnos(result, 1, rel, parent,
          &found_whole_row);

 if (found_whole_row)
  elog(ERROR, "unexpected whole-row reference found in partition key");


 Assert(rel->rd_partcheckcxt == ((void*)0));
 Assert(rel->rd_partcheck == NIL);
 if (result != NIL)
 {
  rel->rd_partcheckcxt = AllocSetContextCreate(CacheMemoryContext,
              "partition constraint",
              ALLOCSET_SMALL_SIZES);
  MemoryContextCopyAndSetIdentifier(rel->rd_partcheckcxt,
            RelationGetRelationName(rel));
  oldcxt = MemoryContextSwitchTo(rel->rd_partcheckcxt);
  rel->rd_partcheck = copyObject(result);
  MemoryContextSwitchTo(oldcxt);
 }
 else
  rel->rd_partcheck = NIL;
 rel->rd_partcheckvalid = 1;


 relation_close(parent, NoLock);


 return result;
}
