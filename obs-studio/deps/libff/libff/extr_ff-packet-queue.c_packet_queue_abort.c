
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_packet_queue {int abort; int mutex; int cond; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void packet_queue_abort(struct ff_packet_queue *q)
{
 pthread_mutex_lock(&q->mutex);
 q->abort = 1;
 pthread_cond_signal(&q->cond);
 pthread_mutex_unlock(&q->mutex);
}
