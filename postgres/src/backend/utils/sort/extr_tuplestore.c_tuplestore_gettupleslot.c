
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tuplestorestate ;
typedef int TupleTableSlot ;
typedef scalar_t__ MinimalTuple ;


 int ExecClearTuple (int *) ;
 int ExecStoreMinimalTuple (scalar_t__,int *,int) ;
 scalar_t__ heap_copy_minimal_tuple (scalar_t__) ;
 scalar_t__ tuplestore_gettuple (int *,int,int*) ;

bool
tuplestore_gettupleslot(Tuplestorestate *state, bool forward,
      bool copy, TupleTableSlot *slot)
{
 MinimalTuple tuple;
 bool should_free;

 tuple = (MinimalTuple) tuplestore_gettuple(state, forward, &should_free);

 if (tuple)
 {
  if (copy && !should_free)
  {
   tuple = heap_copy_minimal_tuple(tuple);
   should_free = 1;
  }
  ExecStoreMinimalTuple(tuple, slot, should_free);
  return 1;
 }
 else
 {
  ExecClearTuple(slot);
  return 0;
 }
}
