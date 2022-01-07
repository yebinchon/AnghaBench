
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {void** slots; int item_size; } ;


 void* av_mallocz (int ) ;

__attribute__((used)) static void *queue_fetch_or_alloc(struct ff_circular_queue *cq, int index)
{
 if (cq->slots[index] == ((void*)0))
  cq->slots[index] = av_mallocz(cq->item_size);

 return cq->slots[index];
}
