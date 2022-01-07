
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context; } ;
typedef TYPE_1__ Tuplestorestate ;
typedef int TupleDesc ;
typedef scalar_t__ MinimalTuple ;
typedef int MemoryContext ;
typedef int Datum ;


 int GetMemoryChunkSpace (scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int USEMEM (TYPE_1__*,int ) ;
 scalar_t__ heap_form_minimal_tuple (int ,int *,int*) ;
 int tuplestore_puttuple_common (TYPE_1__*,void*) ;

void
tuplestore_putvalues(Tuplestorestate *state, TupleDesc tdesc,
      Datum *values, bool *isnull)
{
 MinimalTuple tuple;
 MemoryContext oldcxt = MemoryContextSwitchTo(state->context);

 tuple = heap_form_minimal_tuple(tdesc, values, isnull);
 USEMEM(state, GetMemoryChunkSpace(tuple));

 tuplestore_puttuple_common(state, (void *) tuple);

 MemoryContextSwitchTo(oldcxt);
}
