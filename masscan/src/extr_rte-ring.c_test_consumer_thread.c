
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rte_ring {int dummy; } ;
struct Test {int consumer_done; scalar_t__ total_count; int not_active; struct rte_ring* ring; } ;
typedef scalar_t__ Element ;


 int rte_ring_empty (struct rte_ring*) ;
 int rte_ring_sc_dequeue (struct rte_ring*,void**) ;

__attribute__((used)) static void
test_consumer_thread(void *v)
{
    struct Test *test = (struct Test *)v;
    struct rte_ring *ring = test->ring;
    int err;

    test->total_count = 0;

    while (!test->not_active) {
        Element e;

        err = rte_ring_sc_dequeue(ring, (void**)&e);
        if (err == 0)
            test->total_count += e;
        else {
            ;
        }
    }



    while (!rte_ring_empty(ring)) {
        Element e;

        err = rte_ring_sc_dequeue(ring, (void**)&e);
        if (err == 0)
            test->total_count += e;
        else {
            ;
        }
    }

    test->consumer_done = 1;
}
