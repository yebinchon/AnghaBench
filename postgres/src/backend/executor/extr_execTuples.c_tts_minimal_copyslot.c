
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tts_mcxt; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int MinimalTuple ;
typedef int MemoryContext ;


 int ExecCopySlotMinimalTuple (TYPE_1__*) ;
 int ExecStoreMinimalTuple (int ,TYPE_1__*,int) ;
 int MemoryContextSwitchTo (int ) ;

__attribute__((used)) static void
tts_minimal_copyslot(TupleTableSlot *dstslot, TupleTableSlot *srcslot)
{
 MemoryContext oldcontext;
 MinimalTuple mintuple;

 oldcontext = MemoryContextSwitchTo(dstslot->tts_mcxt);
 mintuple = ExecCopySlotMinimalTuple(srcslot);
 MemoryContextSwitchTo(oldcontext);

 ExecStoreMinimalTuple(mintuple, dstslot, 1);
}
