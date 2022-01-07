
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int tts_tid; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int Relation ;
typedef int HeapTuple ;


 int ExecFetchSlotHeapTuple (TYPE_1__*,int,int*) ;
 int heap_abort_speculative (int ,int *) ;
 int heap_finish_speculative (int ,int *) ;
 int pfree (int ) ;

__attribute__((used)) static void
heapam_tuple_complete_speculative(Relation relation, TupleTableSlot *slot,
          uint32 specToken, bool succeeded)
{
 bool shouldFree = 1;
 HeapTuple tuple = ExecFetchSlotHeapTuple(slot, 1, &shouldFree);


 if (succeeded)
  heap_finish_speculative(relation, &slot->tts_tid);
 else
  heap_abort_speculative(relation, &slot->tts_tid);

 if (shouldFree)
  pfree(tuple);
}
