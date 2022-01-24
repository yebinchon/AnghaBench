#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_4__ {unsigned int head; unsigned int tail; } ;
struct TYPE_3__ {unsigned int mask; unsigned int tail; } ;
struct rte_ring {TYPE_2__ cons; void** ring; TYPE_1__ prod; } ;
typedef  enum rte_ring_queue_behavior { ____Placeholder_rte_ring_queue_behavior } rte_ring_queue_behavior ;

/* Variables and functions */
 int ENOENT ; 
 int RTE_RING_QUEUE_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct rte_ring*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  deq_fail ; 
 int /*<<< orphan*/  deq_success ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (unsigned int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int
FUNC6(struct rte_ring *r, void **obj_table,
         unsigned n, enum rte_ring_queue_behavior behavior)
{
    uint32_t cons_head;
    uint32_t cons_next;
    const unsigned max = n;
    int success;
    unsigned i;
    uint32_t mask = r->prod.mask;

    /* move cons.head atomically */
    do {
        uint32_t prod_tail;
        uint32_t entries;
        
        /* Restore n as it may change every loop */
        n = max;

        cons_head = r->cons.head;
        prod_tail = r->prod.tail;
        /* The subtraction is done between two unsigned 32bits value
         * (the result is always modulo 32 bits even if we have
         * cons_head > prod_tail). So 'entries' is always between 0
         * and size(ring)-1. */
        entries = (prod_tail - cons_head);

        /* Set the actual entries for dequeue */
        if (FUNC5(n > entries)) {
            if (behavior == RTE_RING_QUEUE_FIXED) {
                FUNC0(r, deq_fail, n);
                return -ENOENT;
            }
            else {
                if (FUNC5(entries == 0)){
                    FUNC0(r, deq_fail, n);
                    return 0;
                }

                n = entries;
            }
        }

        cons_next = cons_head + n;
        success = FUNC2(&r->cons.head, cons_head,
                          cons_next);
    } while (FUNC5(success == 0));

    /* copy in table */
    FUNC4();
    for (i = 0; FUNC1(i < n); i++) {
        obj_table[i] = r->ring[(cons_head + i) & mask];
    }

    /*
     * If there are other dequeues in progress that preceded us,
     * we need to wait for them to complete
     */
    while (FUNC5(r->cons.tail != cons_head))
        FUNC3();

    FUNC0(r, deq_success, n);
    r->cons.tail = cons_next;

    return behavior == RTE_RING_QUEUE_FIXED ? 0 : n;
}