
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp_enqueue; } ;
struct rte_ring {TYPE_1__ prod; } ;


 int rte_ring_mp_enqueue (struct rte_ring*,void*) ;
 int rte_ring_sp_enqueue (struct rte_ring*,void*) ;

__attribute__((used)) static inline int
rte_ring_enqueue(struct rte_ring *r, void *obj)
{
    if (r->prod.sp_enqueue)
        return rte_ring_sp_enqueue(r, obj);
    else
        return rte_ring_mp_enqueue(r, obj);
}
