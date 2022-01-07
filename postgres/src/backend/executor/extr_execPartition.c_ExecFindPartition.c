
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_38__ {int * ecxt_scantuple; } ;
struct TYPE_31__ {int state; } ;
struct TYPE_37__ {TYPE_1__ ps; } ;
struct TYPE_36__ {scalar_t__ nparts; int * oids; scalar_t__* is_leaf; } ;
struct TYPE_35__ {size_t* indexes; int * tupslot; TYPE_6__* partdesc; int reldesc; int * tupmap; } ;
struct TYPE_34__ {size_t num_partitions; size_t num_dispatch; scalar_t__ subplan_resultrel_htab; TYPE_3__** partitions; TYPE_5__** partition_dispatch_info; } ;
struct TYPE_33__ {scalar_t__ ri_PartitionCheck; } ;
struct TYPE_32__ {TYPE_3__* rri; } ;
typedef TYPE_2__ SubplanResultRelHashElem ;
typedef TYPE_3__ ResultRelInfo ;
typedef int Relation ;
typedef TYPE_4__ PartitionTupleRouting ;
typedef TYPE_5__* PartitionDispatch ;
typedef TYPE_6__* PartitionDesc ;
typedef int Oid ;
typedef TYPE_7__ ModifyTableState ;
typedef int MemoryContext ;
typedef TYPE_8__ ExprContext ;
typedef int EState ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CMD_INSERT ;
 int CheckValidResultRel (TYPE_3__*,int ) ;
 int ERRCODE_CHECK_VIOLATION ;
 int ERROR ;
 char* ExecBuildSlotPartitionKeyDescription (int ,int *,int*,int) ;
 int ExecClearTuple (int *) ;
 TYPE_5__* ExecInitPartitionDispatchInfo (int ,TYPE_4__*,int ,TYPE_5__*,int) ;
 TYPE_3__* ExecInitPartitionInfo (TYPE_7__*,int *,TYPE_4__*,TYPE_5__*,TYPE_3__*,int) ;
 int ExecInitRoutingInfo (TYPE_7__*,int *,TYPE_4__*,TYPE_5__*,TYPE_3__*,int) ;
 int ExecPartitionCheck (TYPE_3__*,int *,int *,int) ;
 int FormPartitionKeyDatum (TYPE_5__*,int *,int *,int *,int*) ;
 TYPE_8__* GetPerTupleExprContext (int *) ;
 int GetPerTupleMemoryContext (int *) ;
 int HASH_FIND ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (int ) ;
 int PARTITION_MAX_KEYS ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*,int ) ;
 int * execute_attr_map_slot (int *,int *,int *) ;
 int get_partition_for_tuple (TYPE_5__*,int *,int*) ;
 TYPE_2__* hash_search (scalar_t__,int *,int ,int *) ;
 scalar_t__ likely (int) ;

ResultRelInfo *
ExecFindPartition(ModifyTableState *mtstate,
      ResultRelInfo *rootResultRelInfo,
      PartitionTupleRouting *proute,
      TupleTableSlot *slot, EState *estate)
{
 PartitionDispatch *pd = proute->partition_dispatch_info;
 Datum values[PARTITION_MAX_KEYS];
 bool isnull[PARTITION_MAX_KEYS];
 Relation rel;
 PartitionDispatch dispatch;
 PartitionDesc partdesc;
 ExprContext *ecxt = GetPerTupleExprContext(estate);
 TupleTableSlot *ecxt_scantuple_old = ecxt->ecxt_scantuple;
 TupleTableSlot *myslot = ((void*)0);
 MemoryContext oldcxt;


 oldcxt = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));





 if (rootResultRelInfo->ri_PartitionCheck)
  ExecPartitionCheck(rootResultRelInfo, slot, estate, 1);


 dispatch = pd[0];
 while (1)
 {
  AttrNumber *map = dispatch->tupmap;
  int partidx = -1;

  CHECK_FOR_INTERRUPTS();

  rel = dispatch->reldesc;
  partdesc = dispatch->partdesc;





  myslot = dispatch->tupslot;
  if (myslot != ((void*)0))
  {
   Assert(map != ((void*)0));
   slot = execute_attr_map_slot(map, slot, myslot);
  }
  ecxt->ecxt_scantuple = slot;
  FormPartitionKeyDatum(dispatch, slot, estate, values, isnull);





  if (partdesc->nparts == 0 ||
   (partidx = get_partition_for_tuple(dispatch, values, isnull)) < 0)
  {
   char *val_desc;

   val_desc = ExecBuildSlotPartitionKeyDescription(rel,
               values, isnull, 64);
   Assert(OidIsValid(RelationGetRelid(rel)));
   ereport(ERROR,
     (errcode(ERRCODE_CHECK_VIOLATION),
      errmsg("no partition of relation \"%s\" found for row",
       RelationGetRelationName(rel)),
      val_desc ?
      errdetail("Partition key of the failing row contains %s.",
          val_desc) : 0));
  }

  if (partdesc->is_leaf[partidx])
  {
   ResultRelInfo *rri;





   if (likely(dispatch->indexes[partidx] >= 0))
   {

    Assert(dispatch->indexes[partidx] < proute->num_partitions);
    rri = proute->partitions[dispatch->indexes[partidx]];
   }
   else
   {
    bool found = 0;






    if (proute->subplan_resultrel_htab)
    {
     Oid partoid = partdesc->oids[partidx];
     SubplanResultRelHashElem *elem;

     elem = hash_search(proute->subplan_resultrel_htab,
            &partoid, HASH_FIND, ((void*)0));
     if (elem)
     {
      found = 1;
      rri = elem->rri;


      CheckValidResultRel(rri, CMD_INSERT);


      ExecInitRoutingInfo(mtstate, estate, proute, dispatch,
           rri, partidx);
     }
    }


    if (!found)
     rri = ExecInitPartitionInfo(mtstate, estate, proute,
            dispatch,
            rootResultRelInfo, partidx);
   }


   if (slot == myslot)
    ExecClearTuple(myslot);

   MemoryContextSwitchTo(oldcxt);
   ecxt->ecxt_scantuple = ecxt_scantuple_old;
   return rri;
  }
  else
  {



   if (likely(dispatch->indexes[partidx] >= 0))
   {

    Assert(dispatch->indexes[partidx] < proute->num_dispatch);





    dispatch = pd[dispatch->indexes[partidx]];
   }
   else
   {

    PartitionDispatch subdispatch;





    subdispatch = ExecInitPartitionDispatchInfo(mtstate->ps.state,
               proute,
               partdesc->oids[partidx],
               dispatch, partidx);
    Assert(dispatch->indexes[partidx] >= 0 &&
        dispatch->indexes[partidx] < proute->num_dispatch);
    dispatch = subdispatch;
   }
  }
 }
}
