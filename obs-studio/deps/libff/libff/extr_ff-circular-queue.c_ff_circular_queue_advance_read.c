
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int read_index; int capacity; int size; } ;


 int queue_lock (struct ff_circular_queue*) ;
 int queue_signal (struct ff_circular_queue*) ;
 int queue_unlock (struct ff_circular_queue*) ;

void ff_circular_queue_advance_read(struct ff_circular_queue *cq)
{
 cq->read_index = (cq->read_index + 1) % cq->capacity;
 queue_lock(cq);
 --cq->size;
 queue_signal(cq);
 queue_unlock(cq);
}
