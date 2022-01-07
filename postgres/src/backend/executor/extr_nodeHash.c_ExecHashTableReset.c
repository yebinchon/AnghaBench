
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * unshared; } ;
struct TYPE_5__ {int nbuckets; int * chunks; scalar_t__ spaceUsed; TYPE_1__ buckets; int batchCxt; } ;
typedef int MemoryContext ;
typedef int HashJoinTuple ;
typedef TYPE_2__* HashJoinTable ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ palloc0 (int) ;

void
ExecHashTableReset(HashJoinTable hashtable)
{
 MemoryContext oldcxt;
 int nbuckets = hashtable->nbuckets;





 MemoryContextReset(hashtable->batchCxt);
 oldcxt = MemoryContextSwitchTo(hashtable->batchCxt);


 hashtable->buckets.unshared = (HashJoinTuple *)
  palloc0(nbuckets * sizeof(HashJoinTuple));

 hashtable->spaceUsed = 0;

 MemoryContextSwitchTo(oldcxt);


 hashtable->chunks = ((void*)0);
}
