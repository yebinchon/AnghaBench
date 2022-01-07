
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rte_ring {int dummy; } ;
struct Test {int producer_done; int producer_started; struct rte_ring* ring; } ;


 int pixie_locked_add_u32 (int *,int) ;
 int rte_ring_sp_enqueue (struct rte_ring*,void*) ;

__attribute__((used)) static void
test_producer_thread(void *v)
{
    struct Test *test = (struct Test *)v;
    unsigned i = 1000;
    struct rte_ring *ring = test->ring;

    pixie_locked_add_u32(&test->producer_started, 1);
    while (i) {
        int err;
        for (;;) {
            err = rte_ring_sp_enqueue(ring, (void*)(size_t)i);
            if (err == 0)
                break;
        }
        i--;
    }
    pixie_locked_add_u32(&test->producer_done, 1);
}
