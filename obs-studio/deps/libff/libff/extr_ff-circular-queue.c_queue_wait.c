
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int mutex; int cond; } ;


 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static void queue_wait(struct ff_circular_queue *cq)
{
 pthread_cond_wait(&cq->cond, &cq->mutex);
}
