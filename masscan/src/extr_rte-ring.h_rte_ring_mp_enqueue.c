
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rte_ring {int dummy; } ;


 int rte_ring_mp_enqueue_bulk (struct rte_ring*,void**,int) ;

__attribute__((used)) static inline int
rte_ring_mp_enqueue(struct rte_ring *r, void *obj)
{
    return rte_ring_mp_enqueue_bulk(r, &obj, 1);
}
