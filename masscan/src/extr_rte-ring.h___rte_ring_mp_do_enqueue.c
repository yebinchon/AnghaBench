
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_4__ {unsigned int mask; unsigned int head; unsigned int watermark; unsigned int tail; } ;
struct TYPE_3__ {unsigned int tail; } ;
struct rte_ring {void** ring; TYPE_2__ prod; TYPE_1__ cons; } ;
typedef enum rte_ring_queue_behavior { ____Placeholder_rte_ring_queue_behavior } rte_ring_queue_behavior ;


 int EDQUOT ;
 int ENOBUFS ;
 int RTE_RING_QUEUE_FIXED ;
 unsigned int RTE_RING_QUOT_EXCEED ;
 int __RING_STAT_ADD (struct rte_ring*,int ,unsigned int) ;
 int enq_fail ;
 int enq_quota ;
 int enq_success ;
 scalar_t__ likely (int) ;
 int rte_atomic32_cmpset (unsigned int*,unsigned int,unsigned int) ;
 int rte_pause () ;
 int rte_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
__rte_ring_mp_do_enqueue(struct rte_ring *r, void * const *obj_table,
             unsigned n, enum rte_ring_queue_behavior behavior)
{
    uint32_t prod_head, prod_next;
    uint32_t free_entries;
    const unsigned max = n;
    int success;
    unsigned i;
    uint32_t mask = r->prod.mask;
    int ret;


    do {
        uint32_t cons_tail;


        n = max;

        prod_head = r->prod.head;
        cons_tail = r->cons.tail;




        free_entries = (mask + cons_tail - prod_head);


        if (unlikely(n > free_entries)) {
            if (behavior == RTE_RING_QUEUE_FIXED) {
                __RING_STAT_ADD(r, enq_fail, n);
                return -ENOBUFS;
            }
            else {

                if (unlikely(free_entries == 0)) {
                    __RING_STAT_ADD(r, enq_fail, n);
                    return 0;
                }

                n = free_entries;
            }
        }

        prod_next = prod_head + n;
        success = rte_atomic32_cmpset(&r->prod.head, prod_head,
                          prod_next);
    } while (unlikely(success == 0));


    for (i = 0; likely(i < n); i++)
        r->ring[(prod_head + i) & mask] = obj_table[i];
    rte_wmb();


    if (unlikely(((mask + 1) - free_entries + n) > r->prod.watermark)) {
        ret = (behavior == RTE_RING_QUEUE_FIXED) ? -EDQUOT :
                (int)(n | RTE_RING_QUOT_EXCEED);
        __RING_STAT_ADD(r, enq_quota, n);
    }
    else {
        ret = (behavior == RTE_RING_QUEUE_FIXED) ? 0 : n;
        __RING_STAT_ADD(r, enq_success, n);
    }





    while (unlikely(r->prod.tail != prod_head))
        rte_pause();

    r->prod.tail = prod_next;
    return ret;
}
