
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ nn_mutex_t ;


 int PTHREAD_MUTEX_ERRORCHECK ;
 int errnum_assert (int,int) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

void nn_mutex_init (nn_mutex_t *self)
{
    int rc;
    pthread_mutexattr_t attr;

    pthread_mutexattr_init(&attr);
    rc = pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_ERRORCHECK);
    errnum_assert (rc == 0, rc);
    rc = pthread_mutex_init (&self->mutex, ((void*)0));
    errnum_assert (rc == 0, rc);
    pthread_mutexattr_destroy(&attr);
}
