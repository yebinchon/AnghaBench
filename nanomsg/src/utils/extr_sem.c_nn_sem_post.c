
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sem {int signaled; int mutex; int cond; } ;


 int errnum_assert (int,int) ;
 int nn_assert (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void nn_sem_post (struct nn_sem *self)
{
    int rc;

    rc = pthread_mutex_lock (&self->mutex);
    errnum_assert (rc == 0, rc);
    nn_assert (self->signaled == 0);
    self->signaled = 1;
    rc = pthread_cond_signal (&self->cond);
    errnum_assert (rc == 0, rc);
    rc = pthread_mutex_unlock (&self->mutex);
    errnum_assert (rc == 0, rc);
}
