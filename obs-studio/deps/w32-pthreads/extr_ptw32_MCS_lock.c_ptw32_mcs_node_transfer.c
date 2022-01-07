
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ next; scalar_t__ lock; scalar_t__ readyFlag; scalar_t__ nextFlag; } ;
typedef TYPE_1__ ptw32_mcs_local_node_t ;
typedef int PTW32_INTERLOCKED_PVOID_PTR ;
typedef int PTW32_INTERLOCKED_PVOID ;


 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR (int ,int ,int ) ;
 int sched_yield () ;

void
ptw32_mcs_node_transfer (ptw32_mcs_local_node_t * new_node, ptw32_mcs_local_node_t * old_node)
{
  new_node->lock = old_node->lock;
  new_node->nextFlag = 0;
  new_node->readyFlag = 0;
  new_node->next = 0;

  if ((ptw32_mcs_local_node_t *)PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR((PTW32_INTERLOCKED_PVOID_PTR)new_node->lock,
                                                                       (PTW32_INTERLOCKED_PVOID)new_node,
                                                                       (PTW32_INTERLOCKED_PVOID)old_node)
       != old_node)
    {



      while (old_node->next == 0)
        {
          sched_yield();
        }
      new_node->next = old_node->next;
    }
}
