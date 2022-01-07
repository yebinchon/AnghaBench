
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int area; int parallel_state; } ;
struct TYPE_7__ {int shared; } ;
struct TYPE_8__ {TYPE_1__ next; } ;
typedef TYPE_2__* HashJoinTuple ;
typedef TYPE_3__* HashJoinTable ;


 int Assert (int ) ;
 scalar_t__ dsa_get_address (int ,int ) ;

__attribute__((used)) static inline HashJoinTuple
ExecParallelHashNextTuple(HashJoinTable hashtable, HashJoinTuple tuple)
{
 HashJoinTuple next;

 Assert(hashtable->parallel_state);
 next = (HashJoinTuple) dsa_get_address(hashtable->area, tuple->next.shared);

 return next;
}
