
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rte_ring {int dummy; } ;


 int RTE_RING_QUEUE_VARIABLE ;
 int __rte_ring_sp_do_enqueue (struct rte_ring*,void* const*,unsigned int,int ) ;

__attribute__((used)) static inline int
rte_ring_sp_enqueue_burst(struct rte_ring *r, void * const *obj_table,
             unsigned n)
{
    return __rte_ring_sp_do_enqueue(r, obj_table, n, RTE_RING_QUEUE_VARIABLE);
}
