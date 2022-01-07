
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Queue {int dummy; } ;


 int dequeue (struct Queue*) ;
 int free (struct Queue*) ;
 scalar_t__ queue_has_more_items (struct Queue*) ;

void
queue_destroy(struct Queue * queue)
{
    if (queue == ((void*)0))
        return;
    while (queue_has_more_items(queue))
        dequeue(queue);
    free(queue);
}
