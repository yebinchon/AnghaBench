
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsa_pointer ;
struct TYPE_4__ {int * shared; } ;
struct TYPE_5__ {int area; TYPE_1__ buckets; int parallel_state; } ;
typedef scalar_t__ HashJoinTuple ;
typedef TYPE_2__* HashJoinTable ;


 int Assert (int ) ;
 scalar_t__ dsa_get_address (int ,int ) ;
 int dsa_pointer_atomic_read (int *) ;

__attribute__((used)) static inline HashJoinTuple
ExecParallelHashFirstTuple(HashJoinTable hashtable, int bucketno)
{
 HashJoinTuple tuple;
 dsa_pointer p;

 Assert(hashtable->parallel_state);
 p = dsa_pointer_atomic_read(&hashtable->buckets.shared[bucketno]);
 tuple = (HashJoinTuple) dsa_get_address(hashtable->area, p);

 return tuple;
}
