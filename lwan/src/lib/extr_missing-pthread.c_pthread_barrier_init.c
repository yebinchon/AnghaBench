
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_barrierattr_t ;
struct TYPE_3__ {unsigned int count; int mutex; int cond; scalar_t__ in; } ;
typedef TYPE_1__ pthread_barrier_t ;


 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

int
pthread_barrier_init(pthread_barrier_t *restrict barrier,
        const pthread_barrierattr_t *restrict attr __attribute__((unused)),
        unsigned int count) {
    if (count == 0) {
        return -1;
    }

    barrier->count = count;
    barrier->in = 0;

    if (pthread_mutex_init(&barrier->mutex, ((void*)0)) < 0)
        return -1;

    if (pthread_cond_init(&barrier->cond, ((void*)0)) < 0) {
        pthread_mutex_destroy(&barrier->mutex);
        return -1;
    }

    return 0;
}
