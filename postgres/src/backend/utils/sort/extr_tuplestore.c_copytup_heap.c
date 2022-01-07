
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tuplestorestate ;
typedef scalar_t__ MinimalTuple ;
typedef int HeapTuple ;


 int GetMemoryChunkSpace (scalar_t__) ;
 int USEMEM (int *,int ) ;
 scalar_t__ minimal_tuple_from_heap_tuple (int ) ;

__attribute__((used)) static void *
copytup_heap(Tuplestorestate *state, void *tup)
{
 MinimalTuple tuple;

 tuple = minimal_tuple_from_heap_tuple((HeapTuple) tup);
 USEMEM(state, GetMemoryChunkSpace(tuple));
 return (void *) tuple;
}
