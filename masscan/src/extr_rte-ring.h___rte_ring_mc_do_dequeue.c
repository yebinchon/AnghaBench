
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_4__ {unsigned int head; unsigned int tail; } ;
struct TYPE_3__ {unsigned int mask; unsigned int tail; } ;
struct rte_ring {TYPE_2__ cons; void** ring; TYPE_1__ prod; } ;
typedef enum rte_ring_queue_behavior { ____Placeholder_rte_ring_queue_behavior } rte_ring_queue_behavior ;


 int ENOENT ;
 int RTE_RING_QUEUE_FIXED ;
 int __RING_STAT_ADD (struct rte_ring*,int ,unsigned int) ;
 int deq_fail ;
 int deq_success ;
 scalar_t__ likely (int) ;
 int rte_atomic32_cmpset (unsigned int*,unsigned int,unsigned int) ;
 int rte_pause () ;
 int rte_rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
__rte_ring_mc_do_dequeue(struct rte_ring *r, void **obj_table,
         unsigned n, enum rte_ring_queue_behavior behavior)
{
    uint32_t cons_head;
    uint32_t cons_next;
    const unsigned max = n;
    int success;
    unsigned i;
    uint32_t mask = r->prod.mask;


    do {
        uint32_t prod_tail;
        uint32_t entries;


        n = max;

        cons_head = r->cons.head;
        prod_tail = r->prod.tail;




        entries = (prod_tail - cons_head);


        if (unlikely(n > entries)) {
            if (behavior == RTE_RING_QUEUE_FIXED) {
                __RING_STAT_ADD(r, deq_fail, n);
                return -ENOENT;
            }
            else {
                if (unlikely(entries == 0)){
                    __RING_STAT_ADD(r, deq_fail, n);
                    return 0;
                }

                n = entries;
            }
        }

        cons_next = cons_head + n;
        success = rte_atomic32_cmpset(&r->cons.head, cons_head,
                          cons_next);
    } while (unlikely(success == 0));


    rte_rmb();
    for (i = 0; likely(i < n); i++) {
        obj_table[i] = r->ring[(cons_head + i) & mask];
    }





    while (unlikely(r->cons.tail != cons_head))
        rte_pause();

    __RING_STAT_ADD(r, deq_success, n);
    r->cons.tail = cons_next;

    return behavior == RTE_RING_QUEUE_FIXED ? 0 : n;
}
