
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tuplestorestate ;


 int pfree (void*) ;
 void* tuplestore_gettuple (int *,int,int*) ;

bool
tuplestore_advance(Tuplestorestate *state, bool forward)
{
 void *tuple;
 bool should_free;

 tuple = tuplestore_gettuple(state, forward, &should_free);

 if (tuple)
 {
  if (should_free)
   pfree(tuple);
  return 1;
 }
 else
 {
  return 0;
 }
}
