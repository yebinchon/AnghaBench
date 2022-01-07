
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_17__ ;


typedef int hashkey ;
typedef TYPE_4__* UnresolvedTup ;
struct TYPE_31__ {void* tid; int xmin; } ;
typedef TYPE_5__ TidHashKey ;
struct TYPE_34__ {TYPE_17__* t_data; void* t_self; } ;
struct TYPE_33__ {void* new_tid; } ;
struct TYPE_32__ {int rs_old_new_tid_map; int rs_unresolved_tups; int rs_oldest_xmin; int rs_cutoff_multi; int rs_freeze_xid; TYPE_3__* rs_old_rel; int rs_cxt; } ;
struct TYPE_30__ {void* old_tid; TYPE_8__* tuple; } ;
struct TYPE_29__ {TYPE_2__* rd_rel; } ;
struct TYPE_28__ {int relminmxid; int relfrozenxid; } ;
struct TYPE_27__ {int t_heap; } ;
struct TYPE_26__ {int t_infomask; void* t_ctid; int t_infomask2; TYPE_1__ t_choice; } ;
typedef TYPE_6__* RewriteState ;
typedef TYPE_7__* OldToNewMapping ;
typedef int MemoryContext ;
typedef void* ItemPointerData ;
typedef int HeapTupleFields ;
typedef TYPE_8__* HeapTuple ;


 int Assert (int) ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HASH_REMOVE ;
 int HEAP2_XACT_MASK ;
 int HEAP_UPDATED ;
 int HEAP_XACT_MASK ;
 int HEAP_XMAX_INVALID ;
 int HeapTupleHeaderGetUpdateXid (TYPE_17__*) ;
 int HeapTupleHeaderGetXmin (TYPE_17__*) ;
 int HeapTupleHeaderIndicatesMovedPartitions (TYPE_17__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_17__*) ;
 int ItemPointerEquals (void**,void**) ;
 int ItemPointerSetInvalid (void**) ;
 int MemoryContextSwitchTo (int ) ;
 int TransactionIdPrecedes (int ,int ) ;
 void* hash_search (int ,TYPE_5__*,int ,int*) ;
 TYPE_8__* heap_copytuple (TYPE_8__*) ;
 int heap_freetuple (TYPE_8__*) ;
 int heap_freeze_tuple (TYPE_17__*,int ,int ,int ,int ) ;
 int logical_rewrite_heap_tuple (TYPE_6__*,void*,TYPE_8__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int raw_heap_insert (TYPE_6__*,TYPE_8__*) ;

void
rewrite_heap_tuple(RewriteState state,
       HeapTuple old_tuple, HeapTuple new_tuple)
{
 MemoryContext old_cxt;
 ItemPointerData old_tid;
 TidHashKey hashkey;
 bool found;
 bool free_new;

 old_cxt = MemoryContextSwitchTo(state->rs_cxt);







 memcpy(&new_tuple->t_data->t_choice.t_heap,
     &old_tuple->t_data->t_choice.t_heap,
     sizeof(HeapTupleFields));

 new_tuple->t_data->t_infomask &= ~HEAP_XACT_MASK;
 new_tuple->t_data->t_infomask2 &= ~HEAP2_XACT_MASK;
 new_tuple->t_data->t_infomask |=
  old_tuple->t_data->t_infomask & HEAP_XACT_MASK;





 heap_freeze_tuple(new_tuple->t_data,
       state->rs_old_rel->rd_rel->relfrozenxid,
       state->rs_old_rel->rd_rel->relminmxid,
       state->rs_freeze_xid,
       state->rs_cutoff_multi);





 ItemPointerSetInvalid(&new_tuple->t_data->t_ctid);




 if (!((old_tuple->t_data->t_infomask & HEAP_XMAX_INVALID) ||
    HeapTupleHeaderIsOnlyLocked(old_tuple->t_data)) &&
  !HeapTupleHeaderIndicatesMovedPartitions(old_tuple->t_data) &&
  !(ItemPointerEquals(&(old_tuple->t_self),
       &(old_tuple->t_data->t_ctid))))
 {
  OldToNewMapping mapping;

  memset(&hashkey, 0, sizeof(hashkey));
  hashkey.xmin = HeapTupleHeaderGetUpdateXid(old_tuple->t_data);
  hashkey.tid = old_tuple->t_data->t_ctid;

  mapping = (OldToNewMapping)
   hash_search(state->rs_old_new_tid_map, &hashkey,
      HASH_FIND, ((void*)0));

  if (mapping != ((void*)0))
  {





   new_tuple->t_data->t_ctid = mapping->new_tid;


   hash_search(state->rs_old_new_tid_map, &hashkey,
      HASH_REMOVE, &found);
   Assert(found);
  }
  else
  {




   UnresolvedTup unresolved;

   unresolved = hash_search(state->rs_unresolved_tups, &hashkey,
          HASH_ENTER, &found);
   Assert(!found);

   unresolved->old_tid = old_tuple->t_self;
   unresolved->tuple = heap_copytuple(new_tuple);





   MemoryContextSwitchTo(old_cxt);
   return;
  }
 }







 old_tid = old_tuple->t_self;
 free_new = 0;

 for (;;)
 {
  ItemPointerData new_tid;


  raw_heap_insert(state, new_tuple);
  new_tid = new_tuple->t_self;

  logical_rewrite_heap_tuple(state, old_tid, new_tuple);
  if ((new_tuple->t_data->t_infomask & HEAP_UPDATED) &&
   !TransactionIdPrecedes(HeapTupleHeaderGetXmin(new_tuple->t_data),
           state->rs_oldest_xmin))
  {



   UnresolvedTup unresolved;

   memset(&hashkey, 0, sizeof(hashkey));
   hashkey.xmin = HeapTupleHeaderGetXmin(new_tuple->t_data);
   hashkey.tid = old_tid;

   unresolved = hash_search(state->rs_unresolved_tups, &hashkey,
          HASH_FIND, ((void*)0));

   if (unresolved != ((void*)0))
   {





    if (free_new)
     heap_freetuple(new_tuple);
    new_tuple = unresolved->tuple;
    free_new = 1;
    old_tid = unresolved->old_tid;
    new_tuple->t_data->t_ctid = new_tid;





    hash_search(state->rs_unresolved_tups, &hashkey,
       HASH_REMOVE, &found);
    Assert(found);


    continue;
   }
   else
   {




    OldToNewMapping mapping;

    mapping = hash_search(state->rs_old_new_tid_map, &hashkey,
           HASH_ENTER, &found);
    Assert(!found);

    mapping->new_tid = new_tid;
   }
  }


  if (free_new)
   heap_freetuple(new_tuple);
  break;
 }

 MemoryContextSwitchTo(old_cxt);
}
