
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; int producer_lock; } ;
typedef int gfp_t ;


 int ENOMEM ;
 void** __ptr_ring_init_queue_alloc (int,int ) ;
 void** __ptr_ring_swap_queue (struct ptr_ring*,void**,int,int ,void (*) (void*)) ;
 int kfree (void***) ;
 void*** kmalloc_array (unsigned int,int,int ) ;
 int kvfree (void**) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ptr_ring_resize_multiple(struct ptr_ring **rings,
        unsigned int nrings,
        int size,
        gfp_t gfp, void (*destroy)(void *))
{
 unsigned long flags;
 void ***queues;
 int i;

 queues = kmalloc_array(nrings, sizeof(*queues), gfp);
 if (!queues)
  goto noqueues;

 for (i = 0; i < nrings; ++i) {
  queues[i] = __ptr_ring_init_queue_alloc(size, gfp);
  if (!queues[i])
   goto nomem;
 }

 for (i = 0; i < nrings; ++i) {
  spin_lock_irqsave(&(rings[i])->consumer_lock, flags);
  spin_lock(&(rings[i])->producer_lock);
  queues[i] = __ptr_ring_swap_queue(rings[i], queues[i],
        size, gfp, destroy);
  spin_unlock(&(rings[i])->producer_lock);
  spin_unlock_irqrestore(&(rings[i])->consumer_lock, flags);
 }

 for (i = 0; i < nrings; ++i)
  kvfree(queues[i]);

 kfree(queues);

 return 0;

nomem:
 while (--i >= 0)
  kvfree(queues[i]);

 kfree(queues);

noqueues:
 return -ENOMEM;
}
