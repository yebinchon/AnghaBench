
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_14__ {int * es_partition_directory; int es_query_cxt; } ;
struct TYPE_13__ {int nparts; } ;
struct TYPE_12__ {int* indexes; int * tupslot; int * tupmap; int reldesc; TYPE_3__* partdesc; int keystate; int key; } ;
struct TYPE_11__ {int num_dispatch; int max_dispatch; TYPE_2__** partition_dispatch_info; int partition_root; int memcxt; } ;
typedef int Relation ;
typedef TYPE_1__ PartitionTupleRouting ;
typedef TYPE_2__* PartitionDispatch ;
typedef TYPE_3__* PartitionDesc ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef TYPE_4__ EState ;


 int Assert (int) ;
 int * CreatePartitionDirectory (int ) ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int NIL ;
 TYPE_3__* PartitionDirectoryLookup (int *,int ) ;
 int PartitionDispatchData ;
 int RelationGetDescr (int ) ;
 int RelationGetPartitionKey (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 int RowExclusiveLock ;
 int TTSOpsVirtual ;
 int * convert_tuples_by_name_map_if_req (int ,int ) ;
 int indexes ;
 int memset (int*,int,int) ;
 int offsetof (int ,int ) ;
 scalar_t__ palloc (int) ;
 scalar_t__ repalloc (TYPE_2__**,int) ;
 int table_open (scalar_t__,int ) ;

__attribute__((used)) static PartitionDispatch
ExecInitPartitionDispatchInfo(EState *estate,
         PartitionTupleRouting *proute, Oid partoid,
         PartitionDispatch parent_pd, int partidx)
{
 Relation rel;
 PartitionDesc partdesc;
 PartitionDispatch pd;
 int dispatchidx;
 MemoryContext oldcxt;

 if (estate->es_partition_directory == ((void*)0))
  estate->es_partition_directory =
   CreatePartitionDirectory(estate->es_query_cxt);

 oldcxt = MemoryContextSwitchTo(proute->memcxt);






 if (partoid != RelationGetRelid(proute->partition_root))
  rel = table_open(partoid, RowExclusiveLock);
 else
  rel = proute->partition_root;
 partdesc = PartitionDirectoryLookup(estate->es_partition_directory, rel);

 pd = (PartitionDispatch) palloc(offsetof(PartitionDispatchData, indexes) +
         partdesc->nparts * sizeof(int));
 pd->reldesc = rel;
 pd->key = RelationGetPartitionKey(rel);
 pd->keystate = NIL;
 pd->partdesc = partdesc;
 if (parent_pd != ((void*)0))
 {
  TupleDesc tupdesc = RelationGetDescr(rel);
  pd->tupmap = convert_tuples_by_name_map_if_req(RelationGetDescr(parent_pd->reldesc),
                tupdesc);
  pd->tupslot = pd->tupmap ?
   MakeSingleTupleTableSlot(tupdesc, &TTSOpsVirtual) : ((void*)0);
 }
 else
 {

  pd->tupmap = ((void*)0);
  pd->tupslot = ((void*)0);
 }





 memset(pd->indexes, -1, sizeof(int) * partdesc->nparts);


 dispatchidx = proute->num_dispatch++;


 if (proute->num_dispatch >= proute->max_dispatch)
 {
  if (proute->max_dispatch == 0)
  {
   proute->max_dispatch = 4;
   proute->partition_dispatch_info = (PartitionDispatch *)
    palloc(sizeof(PartitionDispatch) * proute->max_dispatch);
  }
  else
  {
   proute->max_dispatch *= 2;
   proute->partition_dispatch_info = (PartitionDispatch *)
    repalloc(proute->partition_dispatch_info,
       sizeof(PartitionDispatch) * proute->max_dispatch);
  }
 }
 proute->partition_dispatch_info[dispatchidx] = pd;





 if (parent_pd)
 {
  Assert(parent_pd->indexes[partidx] == -1);
  parent_pd->indexes[partidx] = dispatchidx;
 }

 MemoryContextSwitchTo(oldcxt);

 return pd;
}
