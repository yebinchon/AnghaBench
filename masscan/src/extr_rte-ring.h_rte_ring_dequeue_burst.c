
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sc_dequeue; } ;
struct rte_ring {TYPE_1__ cons; } ;


 int rte_ring_mc_dequeue_burst (struct rte_ring*,void**,unsigned int) ;
 int rte_ring_sc_dequeue_burst (struct rte_ring*,void**,unsigned int) ;

__attribute__((used)) static inline int
rte_ring_dequeue_burst(struct rte_ring *r, void **obj_table, unsigned n)
{
    if (r->cons.sc_dequeue)
        return rte_ring_sc_dequeue_burst(r, obj_table, n);
    else
        return rte_ring_mc_dequeue_burst(r, obj_table, n);
}
