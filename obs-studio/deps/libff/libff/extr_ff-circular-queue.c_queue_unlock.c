
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int mutex; } ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void queue_unlock(struct ff_circular_queue *cq)
{
 pthread_mutex_unlock(&cq->mutex);
}
