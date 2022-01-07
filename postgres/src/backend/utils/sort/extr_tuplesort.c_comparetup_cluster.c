
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_11__ {int nKeys; int estate; TYPE_8__* indexInfo; int tupDesc; TYPE_3__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_15__ {scalar_t__* ii_IndexAttrNumbers; int * ii_Expressions; } ;
struct TYPE_14__ {int * ecxt_scantuple; } ;
struct TYPE_13__ {scalar_t__ abbrev_converter; } ;
struct TYPE_12__ {int isnull1; int datum1; scalar_t__ tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef TYPE_3__* SortSupport ;
typedef scalar_t__ HeapTuple ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 scalar_t__ ApplySortAbbrevFullComparator (int ,int,int ,int,TYPE_3__*) ;
 scalar_t__ ApplySortComparator (int ,int,int ,int,TYPE_3__*) ;
 int ExecStoreHeapTuple (scalar_t__,int *,int) ;
 int FormIndexDatum (TYPE_8__*,int *,int ,int *,int*) ;
 TYPE_7__* GetPerTupleExprContext (int ) ;
 int INDEX_MAX_KEYS ;
 int ResetPerTupleExprContext (int ) ;
 int heap_getattr (scalar_t__,scalar_t__,int ,int*) ;

__attribute__((used)) static int
comparetup_cluster(const SortTuple *a, const SortTuple *b,
       Tuplesortstate *state)
{
 SortSupport sortKey = state->sortKeys;
 HeapTuple ltup;
 HeapTuple rtup;
 TupleDesc tupDesc;
 int nkey;
 int32 compare;
 Datum datum1,
    datum2;
 bool isnull1,
    isnull2;
 AttrNumber leading = state->indexInfo->ii_IndexAttrNumbers[0];


 ltup = (HeapTuple) a->tuple;
 rtup = (HeapTuple) b->tuple;
 tupDesc = state->tupDesc;


 if (leading != 0)
 {
  compare = ApplySortComparator(a->datum1, a->isnull1,
           b->datum1, b->isnull1,
           sortKey);
  if (compare != 0)
   return compare;

  if (sortKey->abbrev_converter)
  {
   datum1 = heap_getattr(ltup, leading, tupDesc, &isnull1);
   datum2 = heap_getattr(rtup, leading, tupDesc, &isnull2);

   compare = ApplySortAbbrevFullComparator(datum1, isnull1,
             datum2, isnull2,
             sortKey);
  }
  if (compare != 0 || state->nKeys == 1)
   return compare;

  sortKey++;
  nkey = 1;
 }
 else
 {

  nkey = 0;
 }

 if (state->indexInfo->ii_Expressions == ((void*)0))
 {


  for (; nkey < state->nKeys; nkey++, sortKey++)
  {
   AttrNumber attno = state->indexInfo->ii_IndexAttrNumbers[nkey];

   datum1 = heap_getattr(ltup, attno, tupDesc, &isnull1);
   datum2 = heap_getattr(rtup, attno, tupDesc, &isnull2);

   compare = ApplySortComparator(datum1, isnull1,
            datum2, isnull2,
            sortKey);
   if (compare != 0)
    return compare;
  }
 }
 else
 {






  Datum l_index_values[INDEX_MAX_KEYS];
  bool l_index_isnull[INDEX_MAX_KEYS];
  Datum r_index_values[INDEX_MAX_KEYS];
  bool r_index_isnull[INDEX_MAX_KEYS];
  TupleTableSlot *ecxt_scantuple;


  ResetPerTupleExprContext(state->estate);

  ecxt_scantuple = GetPerTupleExprContext(state->estate)->ecxt_scantuple;

  ExecStoreHeapTuple(ltup, ecxt_scantuple, 0);
  FormIndexDatum(state->indexInfo, ecxt_scantuple, state->estate,
        l_index_values, l_index_isnull);

  ExecStoreHeapTuple(rtup, ecxt_scantuple, 0);
  FormIndexDatum(state->indexInfo, ecxt_scantuple, state->estate,
        r_index_values, r_index_isnull);

  for (; nkey < state->nKeys; nkey++, sortKey++)
  {
   compare = ApplySortComparator(l_index_values[nkey],
            l_index_isnull[nkey],
            r_index_values[nkey],
            r_index_isnull[nkey],
            sortKey);
   if (compare != 0)
    return compare;
  }
 }

 return 0;
}
