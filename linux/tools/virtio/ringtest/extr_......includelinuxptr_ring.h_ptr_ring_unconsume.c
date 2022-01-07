
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int size; int consumer_head; int consumer_tail; int consumer_lock; int producer_lock; int ** queue; } ;


 int WRITE_ONCE (int,int) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ptr_ring_unconsume(struct ptr_ring *r, void **batch, int n,
          void (*destroy)(void *))
{
 unsigned long flags;
 int head;

 spin_lock_irqsave(&r->consumer_lock, flags);
 spin_lock(&r->producer_lock);

 if (!r->size)
  goto done;





 head = r->consumer_head - 1;
 while (likely(head >= r->consumer_tail))
  r->queue[head--] = ((void*)0);
 r->consumer_tail = r->consumer_head;





 while (n) {
  head = r->consumer_head - 1;
  if (head < 0)
   head = r->size - 1;
  if (r->queue[head]) {

   goto done;
  }
  r->queue[head] = batch[--n];
  r->consumer_tail = head;

  WRITE_ONCE(r->consumer_head, head);
 }

done:

 while (n)
  destroy(batch[--n]);
 spin_unlock(&r->producer_lock);
 spin_unlock_irqrestore(&r->consumer_lock, flags);
}
