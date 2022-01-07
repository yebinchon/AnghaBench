
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context; } ;
typedef TYPE_1__ Tuplestorestate ;
typedef int TupleTableSlot ;
typedef scalar_t__ MinimalTuple ;
typedef int MemoryContext ;


 scalar_t__ ExecCopySlotMinimalTuple (int *) ;
 int GetMemoryChunkSpace (scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int USEMEM (TYPE_1__*,int ) ;
 int tuplestore_puttuple_common (TYPE_1__*,void*) ;

void
tuplestore_puttupleslot(Tuplestorestate *state,
      TupleTableSlot *slot)
{
 MinimalTuple tuple;
 MemoryContext oldcxt = MemoryContextSwitchTo(state->context);




 tuple = ExecCopySlotMinimalTuple(slot);
 USEMEM(state, GetMemoryChunkSpace(tuple));

 tuplestore_puttuple_common(state, (void *) tuple);

 MemoryContextSwitchTo(oldcxt);
}
