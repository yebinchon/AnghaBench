
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tts_mcxt; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int MemoryContext ;
typedef int HeapTuple ;


 int ExecCopySlotHeapTuple (TYPE_1__*) ;
 int ExecStoreHeapTuple (int ,TYPE_1__*,int) ;
 int MemoryContextSwitchTo (int ) ;

__attribute__((used)) static void
tts_heap_copyslot(TupleTableSlot *dstslot, TupleTableSlot *srcslot)
{
 HeapTuple tuple;
 MemoryContext oldcontext;

 oldcontext = MemoryContextSwitchTo(dstslot->tts_mcxt);
 tuple = ExecCopySlotHeapTuple(srcslot);
 MemoryContextSwitchTo(oldcontext);

 ExecStoreHeapTuple(tuple, dstslot, 1);
}
