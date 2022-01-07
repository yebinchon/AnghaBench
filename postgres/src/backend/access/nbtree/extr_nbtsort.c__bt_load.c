
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_17__ ;


typedef scalar_t__ int64 ;
typedef scalar_t__ int32 ;
typedef int int16 ;
typedef int TupleDesc ;
struct TYPE_30__ {int sortstate; } ;
struct TYPE_29__ {TYPE_17__* index; TYPE_1__* inskey; } ;
struct TYPE_28__ {int t_tid; } ;
struct TYPE_27__ {int sk_flags; scalar_t__ sk_attno; int sk_collation; } ;
struct TYPE_26__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int ssup_collation; int ssup_cxt; } ;
struct TYPE_25__ {TYPE_3__* scankeys; } ;
struct TYPE_24__ {int rd_smgr; } ;
typedef int SortSupportData ;
typedef TYPE_2__* SortSupport ;
typedef TYPE_3__* ScanKey ;
typedef TYPE_4__* IndexTuple ;
typedef int Datum ;
typedef TYPE_5__ BTWriteState ;
typedef TYPE_6__ BTSpool ;
typedef int BTPageState ;


 scalar_t__ ApplySortComparator (int ,int,int ,int,TYPE_2__*) ;
 int Assert (int) ;
 int AssertState (int) ;
 int BTGreaterStrategyNumber ;
 int BTLessStrategyNumber ;
 int CurrentMemoryContext ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_17__*) ;
 scalar_t__ ItemPointerCompare (int *,int *) ;
 int MAIN_FORKNUM ;
 int PROGRESS_CREATEIDX_TUPLES_DONE ;
 int PrepareSortSupportFromIndexRel (TYPE_17__*,int ,TYPE_2__*) ;
 int RelationGetDescr (TYPE_17__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_17__*) ;
 int RelationOpenSmgr (TYPE_17__*) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int _bt_buildadd (TYPE_5__*,int *,TYPE_4__*) ;
 int * _bt_pagestate (TYPE_5__*,int ) ;
 int _bt_uppershutdown (TYPE_5__*,int *) ;
 int index_getattr (TYPE_4__*,int,int ,int*) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_2__*) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 int smgrimmedsync (int ,int ) ;
 TYPE_4__* tuplesort_getindextuple (int ,int) ;

__attribute__((used)) static void
_bt_load(BTWriteState *wstate, BTSpool *btspool, BTSpool *btspool2)
{
 BTPageState *state = ((void*)0);
 bool merge = (btspool2 != ((void*)0));
 IndexTuple itup,
    itup2 = ((void*)0);
 bool load1;
 TupleDesc tupdes = RelationGetDescr(wstate->index);
 int i,
    keysz = IndexRelationGetNumberOfKeyAttributes(wstate->index);
 SortSupport sortKeys;
 int64 tuples_done = 0;

 if (merge)
 {






  itup = tuplesort_getindextuple(btspool->sortstate, 1);
  itup2 = tuplesort_getindextuple(btspool2->sortstate, 1);


  sortKeys = (SortSupport) palloc0(keysz * sizeof(SortSupportData));

  for (i = 0; i < keysz; i++)
  {
   SortSupport sortKey = sortKeys + i;
   ScanKey scanKey = wstate->inskey->scankeys + i;
   int16 strategy;

   sortKey->ssup_cxt = CurrentMemoryContext;
   sortKey->ssup_collation = scanKey->sk_collation;
   sortKey->ssup_nulls_first =
    (scanKey->sk_flags & SK_BT_NULLS_FIRST) != 0;
   sortKey->ssup_attno = scanKey->sk_attno;

   sortKey->abbreviate = 0;

   AssertState(sortKey->ssup_attno != 0);

   strategy = (scanKey->sk_flags & SK_BT_DESC) != 0 ?
    BTGreaterStrategyNumber : BTLessStrategyNumber;

   PrepareSortSupportFromIndexRel(wstate->index, strategy, sortKey);
  }

  for (;;)
  {
   load1 = 1;
   if (itup2 == ((void*)0))
   {
    if (itup == ((void*)0))
     break;
   }
   else if (itup != ((void*)0))
   {
    int32 compare = 0;

    for (i = 1; i <= keysz; i++)
    {
     SortSupport entry;
     Datum attrDatum1,
        attrDatum2;
     bool isNull1,
        isNull2;

     entry = sortKeys + i - 1;
     attrDatum1 = index_getattr(itup, i, tupdes, &isNull1);
     attrDatum2 = index_getattr(itup2, i, tupdes, &isNull2);

     compare = ApplySortComparator(attrDatum1, isNull1,
              attrDatum2, isNull2,
              entry);
     if (compare > 0)
     {
      load1 = 0;
      break;
     }
     else if (compare < 0)
      break;
    }







    if (compare == 0)
    {
     compare = ItemPointerCompare(&itup->t_tid, &itup2->t_tid);
     Assert(compare != 0);
     if (compare > 0)
      load1 = 0;
    }
   }
   else
    load1 = 0;


   if (state == ((void*)0))
    state = _bt_pagestate(wstate, 0);

   if (load1)
   {
    _bt_buildadd(wstate, state, itup);
    itup = tuplesort_getindextuple(btspool->sortstate, 1);
   }
   else
   {
    _bt_buildadd(wstate, state, itup2);
    itup2 = tuplesort_getindextuple(btspool2->sortstate, 1);
   }


   pgstat_progress_update_param(PROGRESS_CREATEIDX_TUPLES_DONE,
           ++tuples_done);
  }
  pfree(sortKeys);
 }
 else
 {

  while ((itup = tuplesort_getindextuple(btspool->sortstate,
              1)) != ((void*)0))
  {

   if (state == ((void*)0))
    state = _bt_pagestate(wstate, 0);

   _bt_buildadd(wstate, state, itup);


   pgstat_progress_update_param(PROGRESS_CREATEIDX_TUPLES_DONE,
           ++tuples_done);
  }
 }


 _bt_uppershutdown(wstate, state);
 if (RelationNeedsWAL(wstate->index))
 {
  RelationOpenSmgr(wstate->index);
  smgrimmedsync(wstate->index->rd_smgr, MAIN_FORKNUM);
 }
}
