
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
typedef int dsa_pointer ;
struct TYPE_4__ {int shared; } ;
struct TYPE_5__ {TYPE_1__ next; } ;
typedef TYPE_2__* HashJoinTuple ;


 scalar_t__ dsa_pointer_atomic_compare_exchange (int *,int *,int ) ;
 int dsa_pointer_atomic_read (int *) ;

__attribute__((used)) static inline void
ExecParallelHashPushTuple(dsa_pointer_atomic *head,
        HashJoinTuple tuple,
        dsa_pointer tuple_shared)
{
 for (;;)
 {
  tuple->next.shared = dsa_pointer_atomic_read(head);
  if (dsa_pointer_atomic_compare_exchange(head,
            &tuple->next.shared,
            tuple_shared))
   break;
 }
}
