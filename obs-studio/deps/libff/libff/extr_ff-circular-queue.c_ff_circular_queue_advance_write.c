
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {size_t write_index; int capacity; int size; void** slots; } ;


 int queue_lock (struct ff_circular_queue*) ;
 int queue_unlock (struct ff_circular_queue*) ;

void ff_circular_queue_advance_write(struct ff_circular_queue *cq, void *item)
{
 cq->slots[cq->write_index] = item;
 cq->write_index = (cq->write_index + 1) % cq->capacity;

 queue_lock(cq);
 ++cq->size;
 queue_unlock(cq);
}
