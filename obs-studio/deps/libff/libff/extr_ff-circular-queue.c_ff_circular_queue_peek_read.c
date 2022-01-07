
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int read_index; } ;


 void* queue_fetch_or_alloc (struct ff_circular_queue*,int ) ;

void *ff_circular_queue_peek_read(struct ff_circular_queue *cq)
{
 return queue_fetch_or_alloc(cq, cq->read_index);
}
