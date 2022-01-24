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
struct TYPE_4__ {unsigned int mask; unsigned int head; unsigned int watermark; unsigned int tail; } ;
struct TYPE_3__ {unsigned int tail; } ;
struct rte_ring {void** ring; TYPE_2__ prod; TYPE_1__ cons; } ;
typedef  enum rte_ring_queue_behavior { ____Placeholder_rte_ring_queue_behavior } rte_ring_queue_behavior ;

/* Variables and functions */
 int EDQUOT ; 
 int ENOBUFS ; 
 int RTE_RING_QUEUE_FIXED ; 
 unsigned int RTE_RING_QUOT_EXCEED ; 
 int /*<<< orphan*/  FUNC0 (struct rte_ring*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  enq_fail ; 
 int /*<<< orphan*/  enq_quota ; 
 int /*<<< orphan*/  enq_success ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int
FUNC4(struct rte_ring *r, void * const *obj_table,
             unsigned n, enum rte_ring_queue_behavior behavior)
{
    uint32_t prod_head, cons_tail;
    uint32_t prod_next, free_entries;
    unsigned i;
    uint32_t mask = r->prod.mask;
    int ret;

    prod_head = r->prod.head;
    cons_tail = r->cons.tail;
    /* The subtraction is done between two unsigned 32bits value
     * (the result is always modulo 32 bits even if we have
     * prod_head > cons_tail). So 'free_entries' is always between 0
     * and size(ring)-1. */
    free_entries = mask + cons_tail - prod_head;

    /* check that we have enough room in ring */
    if (FUNC3(n > free_entries)) {
        if (behavior == RTE_RING_QUEUE_FIXED) {
            FUNC0(r, enq_fail, n);
            return -ENOBUFS;
        }
        else {
            /* No free entry available */
            if (FUNC3(free_entries == 0)) {
                FUNC0(r, enq_fail, n);
                return 0;
            }

            n = free_entries;
        }
    }

    prod_next = prod_head + n;
    r->prod.head = prod_next;

    /* write entries in ring */
    for (i = 0; FUNC1(i < n); i++)
        r->ring[(prod_head + i) & mask] = obj_table[i];
    FUNC2();

    /* if we exceed the watermark */
    if (FUNC3(((mask + 1) - free_entries + n) > r->prod.watermark)) {
        ret = (behavior == RTE_RING_QUEUE_FIXED) ? -EDQUOT :
            (int)(n | RTE_RING_QUOT_EXCEED);
        FUNC0(r, enq_quota, n);
    }
    else {
        ret = (behavior == RTE_RING_QUEUE_FIXED) ? 0 : n;
        FUNC0(r, enq_success, n);
    }

    r->prod.tail = prod_next;
    return ret;
}