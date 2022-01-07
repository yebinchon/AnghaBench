
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in; int cond; int mutex; } ;
typedef TYPE_1__ pthread_barrier_t ;


 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

int
pthread_barrier_destroy(pthread_barrier_t *barrier)
{
    pthread_mutex_destroy(&barrier->mutex);
    pthread_cond_destroy(&barrier->cond);
    barrier->in = 0;

    return 0;
}
