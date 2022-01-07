
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {scalar_t__ size; scalar_t__ capacity; int abort; } ;


 int queue_lock (struct ff_circular_queue*) ;
 int queue_unlock (struct ff_circular_queue*) ;
 int queue_wait (struct ff_circular_queue*) ;

void ff_circular_queue_wait_write(struct ff_circular_queue *cq)
{
 queue_lock(cq);

 while (cq->size >= cq->capacity && !cq->abort)
  queue_wait(cq);

 queue_unlock(cq);
}
