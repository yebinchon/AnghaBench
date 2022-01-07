
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_12__ {int nKeys; int tupDesc; TYPE_3__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleDesc ;
struct TYPE_16__ {char* t_len; void* t_data; } ;
struct TYPE_15__ {int t_len; } ;
struct TYPE_14__ {int ssup_attno; scalar_t__ abbrev_converter; } ;
struct TYPE_13__ {int isnull1; scalar_t__ tuple; int datum1; } ;
typedef TYPE_2__ SortTuple ;
typedef TYPE_3__* SortSupport ;
typedef TYPE_4__* MinimalTuple ;
typedef void* HeapTupleHeader ;
typedef TYPE_5__ HeapTupleData ;
typedef int Datum ;
typedef int AttrNumber ;


 scalar_t__ ApplySortAbbrevFullComparator (int ,int,int ,int,TYPE_3__*) ;
 scalar_t__ ApplySortComparator (int ,int,int ,int,TYPE_3__*) ;
 char* MINIMAL_TUPLE_OFFSET ;
 int heap_getattr (TYPE_5__*,int ,int ,int*) ;

__attribute__((used)) static int
comparetup_heap(const SortTuple *a, const SortTuple *b, Tuplesortstate *state)
{
 SortSupport sortKey = state->sortKeys;
 HeapTupleData ltup;
 HeapTupleData rtup;
 TupleDesc tupDesc;
 int nkey;
 int32 compare;
 AttrNumber attno;
 Datum datum1,
    datum2;
 bool isnull1,
    isnull2;



 compare = ApplySortComparator(a->datum1, a->isnull1,
          b->datum1, b->isnull1,
          sortKey);
 if (compare != 0)
  return compare;


 ltup.t_len = ((MinimalTuple) a->tuple)->t_len + MINIMAL_TUPLE_OFFSET;
 ltup.t_data = (HeapTupleHeader) ((char *) a->tuple - MINIMAL_TUPLE_OFFSET);
 rtup.t_len = ((MinimalTuple) b->tuple)->t_len + MINIMAL_TUPLE_OFFSET;
 rtup.t_data = (HeapTupleHeader) ((char *) b->tuple - MINIMAL_TUPLE_OFFSET);
 tupDesc = state->tupDesc;

 if (sortKey->abbrev_converter)
 {
  attno = sortKey->ssup_attno;

  datum1 = heap_getattr(&ltup, attno, tupDesc, &isnull1);
  datum2 = heap_getattr(&rtup, attno, tupDesc, &isnull2);

  compare = ApplySortAbbrevFullComparator(datum1, isnull1,
            datum2, isnull2,
            sortKey);
  if (compare != 0)
   return compare;
 }

 sortKey++;
 for (nkey = 1; nkey < state->nKeys; nkey++, sortKey++)
 {
  attno = sortKey->ssup_attno;

  datum1 = heap_getattr(&ltup, attno, tupDesc, &isnull1);
  datum2 = heap_getattr(&rtup, attno, tupDesc, &isnull2);

  compare = ApplySortComparator(datum1, isnull1,
           datum2, isnull2,
           sortKey);
  if (compare != 0)
   return compare;
 }

 return 0;
}
