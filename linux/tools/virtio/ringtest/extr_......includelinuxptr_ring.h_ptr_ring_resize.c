
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; int producer_lock; } ;
typedef int gfp_t ;


 int ENOMEM ;
 void** __ptr_ring_init_queue_alloc (int,int ) ;
 void** __ptr_ring_swap_queue (struct ptr_ring*,void**,int,int ,void (*) (void*)) ;
 int kvfree (void**) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ptr_ring_resize(struct ptr_ring *r, int size, gfp_t gfp,
      void (*destroy)(void *))
{
 unsigned long flags;
 void **queue = __ptr_ring_init_queue_alloc(size, gfp);
 void **old;

 if (!queue)
  return -ENOMEM;

 spin_lock_irqsave(&(r)->consumer_lock, flags);
 spin_lock(&(r)->producer_lock);

 old = __ptr_ring_swap_queue(r, queue, size, gfp, destroy);

 spin_unlock(&(r)->producer_lock);
 spin_unlock_irqrestore(&(r)->consumer_lock, flags);

 kvfree(old);

 return 0;
}
