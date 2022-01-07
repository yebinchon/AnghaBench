
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context; } ;
typedef TYPE_1__ Tuplestorestate ;
typedef int MemoryContext ;
typedef scalar_t__ HeapTuple ;


 scalar_t__ COPYTUP (TYPE_1__*,scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int tuplestore_puttuple_common (TYPE_1__*,void*) ;

void
tuplestore_puttuple(Tuplestorestate *state, HeapTuple tuple)
{
 MemoryContext oldcxt = MemoryContextSwitchTo(state->context);





 tuple = COPYTUP(state, tuple);

 tuplestore_puttuple_common(state, (void *) tuple);

 MemoryContextSwitchTo(oldcxt);
}
