
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_circular_queue {int cond; int mutex; int * slots; } ;


 int av_free (int *) ;
 int ff_circular_queue_abort (struct ff_circular_queue*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void ff_circular_queue_free(struct ff_circular_queue *cq)
{
 ff_circular_queue_abort(cq);

 if (cq->slots != ((void*)0))
  av_free(cq->slots);

 pthread_mutex_destroy(&cq->mutex);
 pthread_cond_destroy(&cq->cond);
}
