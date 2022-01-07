
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleTableSlot ;
struct TYPE_5__ {int ms_nkeys; TYPE_1__* ms_sortkeys; int ** ms_slots; } ;
struct TYPE_4__ {int ssup_attno; } ;
typedef TYPE_1__* SortSupport ;
typedef size_t SlotNumber ;
typedef TYPE_2__ MergeAppendState ;
typedef int Datum ;
typedef int AttrNumber ;


 int ApplySortComparator (int ,int,int ,int,TYPE_1__*) ;
 int Assert (int) ;
 size_t DatumGetInt32 (int ) ;
 int INVERT_COMPARE_RESULT (int) ;
 int TupIsNull (int *) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static int32
heap_compare_slots(Datum a, Datum b, void *arg)
{
 MergeAppendState *node = (MergeAppendState *) arg;
 SlotNumber slot1 = DatumGetInt32(a);
 SlotNumber slot2 = DatumGetInt32(b);

 TupleTableSlot *s1 = node->ms_slots[slot1];
 TupleTableSlot *s2 = node->ms_slots[slot2];
 int nkey;

 Assert(!TupIsNull(s1));
 Assert(!TupIsNull(s2));

 for (nkey = 0; nkey < node->ms_nkeys; nkey++)
 {
  SortSupport sortKey = node->ms_sortkeys + nkey;
  AttrNumber attno = sortKey->ssup_attno;
  Datum datum1,
     datum2;
  bool isNull1,
     isNull2;
  int compare;

  datum1 = slot_getattr(s1, attno, &isNull1);
  datum2 = slot_getattr(s2, attno, &isNull2);

  compare = ApplySortComparator(datum1, isNull1,
           datum2, isNull2,
           sortKey);
  if (compare != 0)
  {
   INVERT_COMPARE_RESULT(compare);
   return compare;
  }
 }
 return 0;
}
