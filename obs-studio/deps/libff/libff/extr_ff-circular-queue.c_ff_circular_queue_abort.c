
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int abort; } ;


 int queue_lock (struct ff_circular_queue*) ;
 int queue_signal (struct ff_circular_queue*) ;
 int queue_unlock (struct ff_circular_queue*) ;

void ff_circular_queue_abort(struct ff_circular_queue *cq)
{
 queue_lock(cq);
 cq->abort = 1;
 queue_signal(cq);
 queue_unlock(cq);
}
