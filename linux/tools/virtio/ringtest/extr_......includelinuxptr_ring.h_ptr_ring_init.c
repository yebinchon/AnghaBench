
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; int producer_lock; scalar_t__ consumer_tail; scalar_t__ consumer_head; scalar_t__ producer; int queue; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int __ptr_ring_init_queue_alloc (int,int ) ;
 int __ptr_ring_set_size (struct ptr_ring*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline int ptr_ring_init(struct ptr_ring *r, int size, gfp_t gfp)
{
 r->queue = __ptr_ring_init_queue_alloc(size, gfp);
 if (!r->queue)
  return -ENOMEM;

 __ptr_ring_set_size(r, size);
 r->producer = r->consumer_head = r->consumer_tail = 0;
 spin_lock_init(&r->producer_lock);
 spin_lock_init(&r->consumer_lock);

 return 0;
}
